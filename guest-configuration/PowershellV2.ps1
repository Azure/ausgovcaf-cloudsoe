Install-Module 'PSDscResources'

Configuration PowerShellV2
{

    Import-DscResource -ModuleName 'PSDscResources'

    Node localhost {
        WindowsFeature 'Ensure PowerShell v2 is not installed'
        {
            Name = 'PowerShell-V2'
            Ensure = 'Absent'
        }
    }
}

PowerShellV2
