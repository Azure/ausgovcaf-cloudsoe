param (
    [string]$GcPolFilePathString = (Get-Item "."), #The guest-configuration folder
    
    [Parameter(Mandatory=$true)]
    [string]$GcPolStorageAccountRg, # the name of the resource group that contains the storage account
    
    [Parameter(Mandatory=$true)]
    [string]$GcPolStorageAccountName, #the storage account
    
    [string]$GcPolStorageAccountContainer = "guest-configuration"
)

# needs to run in powershell version 7
#Requires -Version 7

If ($PSVersionTable.PSVersion.Major -ne 7) {
    Write-Warning "Requires Powershell Version 7 - please install at https://github.com/PowerShell/PowerShell"
    exit 1
}

#Get DSC configurations 
$GcPolFilePath = Get-item $GcPolFilePathString
$PSFiles = $GcPolFilePath.GetFiles("*.ps1")
$PSFiles | % {

    $DscShortName = $_.Basename

    if (Test-Path ($DscShortName + ".json")) {
        #Compile the DSC to MOF
        & ($_.FullName)
    
        #Load the guest configuration metadata (accompanying json file) and install associated DSC modules
        $GcPolicyMetadata = Get-Content ($DscShortName + ".json") | ConvertFrom-Json -AsHashtable
        if ((Get-Member -InputObject $GcPolicyMetadata).Name -contains "DscModules") {
            $GcPolicyMetadata.DscModules | % {Install-Module $_ -Force; Import-Module $_ -Force}
        }

        #Build and upload guest configuration package
        New-GuestConfigurationPackage -Name $DscShortName -Configuration ($GcPolFilePath.FullName + "\" + $DscShortName + "\localhost.mof") -Path Packages -Force
        $ContentUri = Publish-GuestConfigurationPackage -Path ($GcPolFilePath.FullName + "\Packages\" + $DscShortName + "\" + $DscShortName + ".zip") -ResourceGroupName $GcPolStorageAccountRg -StorageAccountName $GcPolStorageAccountName -StorageContainerName $GcPolStorageAccountContainer -Force

        #Create guest configuration policy file
        New-GuestConfigurationPolicy `
            -ContentUri $ContentUri.ContentUri `
            -DisplayName $GcPolicyMetadata.DisplayName `
            -Description $GcPolicyMetadata.Description `
            -Path ($GcPolFilePath.FullName + '\policiestemp') `
            -Platform $GcPolicyMetadata.Platform `
            -Version $GcPolicyMetadata.Version `
            -Parameter $GcPolicyMetadata.PolicyParameters

        #Load guest configuration policy file and apply transforms 
        $GcPolicy = Get-Content  ($GcPolFilePath.FullName + "\policiestemp\AuditIfNotExists.json" )
        $GcPolicy = $GcPolicy.Replace("[parameters('IncludeArcMachines')]","[[parameters('IncludeArcMachines')]") #apply nested parameter escape
        $GcPolicy = $GcPolicy | ConvertFrom-Json
        if ($GcPolicyMetadata.keys -contains "PlatformVersion") { #Apply PlatformVersion-specific transforms
            $GcPolicy.properties.policyrule.if.anyof[0].allof += New-Object -TypeName pscustomobject
            Add-Member -InputObject $GcPolicy.properties.policyrule.if.anyof[0].allof[2] -MemberType NoteProperty -Name field -Value "Microsoft.Compute/virtualMachines/storageProfile.imageReference.id"
            switch ($GcPolicyMetadata.PlatformVersion) {
                "Server 2016" { Add-Member -InputObject $GcPolicy.properties.policyrule.if.anyof[0].allof[2] -MemberType NoteProperty -Name contains -Value "images/WindowsServer2016SOE" } 
                "Server 2019" { Add-Member -InputObject $GcPolicy.properties.policyrule.if.anyof[0].allof[2] -MemberType NoteProperty -Name contains -Value "images/WindowsServer2019SOE" }
                Default {}
            }
        }
        if ($GcPolicyMetadata.keys -contains "PolicyParameters") { #Apply PolicyParameters-specific transforms
            $gcpolicy.properties.policyrule.then.details.existencecondition.allof[1].equals = "[" + $gcpolicy.properties.policyrule.then.details.existencecondition.allof[1].equals
        }

        #Cleanup
        Remove-Item ($GcPolFilePath.FullName + "\" + $DscShortName) -Recurse -Force
        Remove-Item ($GcPolFilePath.FullName + "\Packages") -Recurse -Force
        Remove-item ($GcPolFilePath.FullName + "\policiestemp") -Recurse -Force

        #Construct ARM template from guest configuration policy
        New-Item ($GcPolFilePath.Parent.FullName + "\policies\" + $GcPolicyMetadata.PolicyPath) -ItemType Directory
        $ArmTemplate = [ordered]@{
            "`$schema"="https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#";
            "contentVersion"="1.0.0.0";
            "parameters"=@{"policyName"=@{"type"="string"}};
            "resources"=@(
                [ordered]@{
                    "type"="Microsoft.Authorization/policyDefinitions";
                    "name"="[parameters('policyName')]";
                    "apiVersion"="2019-09-01"
                }
            );
            "outputs"=@{
                "policyDefinitionId"=@{
                    "type"="string";
                    "value"= "[resourceId('Microsoft.Authorization/policyDefinitions',parameters('policyName'))]"
                }
            }
        }
        $ArmTemplate["resources"][0] += @{"properties"=$GcPolicy.properties}
        $ArmTemplate | ConvertTo-Json -depth 100 | Set-Content -Path ($GcPolFilePath.Parent.FullName + "\policies\" + $GcPolicyMetadata.PolicyPath + "\policy.template.json")
    }
}