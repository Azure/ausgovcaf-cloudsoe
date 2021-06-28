## About this project

The CloudSOE project aims to develop a community-driven, cloud-native, multi-platform Standard Operating Environment for organisations that adopt Information Security Manual (ISM) guidelines when building information systems.

The project uses a collection of cloud-native technologies to achieve desired outcomes for Azure (and in future, on-premises & other cloud) IaaS systems:
- Azure Image Builder
- Azure Policy & Guest Configuration
- Azure Monitor 
- Azure Automation
- Azure Automanage

The example code in this repository should be considered a functional prototype which you can learn from and apply in your own sandpit subscriptions.

## What we deploy and configure

The current prototype version of the CloudSOE implements the following features:

#### Enable Azure Automanage for virtual machines
- Profile: _Azure virtual machine best practices - Dev/test_ for non-production systems
- Profile: _Azure virtual machine best practices - Production_ for non-production systems

#### Enable Azure Defender for Servers
- Enable on Log Analytics workstation
- Enable for target subscription

#### Configure Azure Update Management
- Enable Log Analytics solution
- Schedule alternating daily patching windows (Tag with AutoUpdateGroup:1 or AutoUpdateGroup:2) 

#### Tagging Defaults
- Tag all SOE-deployed VMs as SOE:True for discovery
- Tag all VMs as Production:True unless otherwise tagged

#### Assign built-in Azure Policy
- Enable Azure Azure Monitor for VMs
- Disk encryption should be applied on virtual machines
- Deploy vulnerability assessment solution on virtual machines
- Azure Security Benchmark

#### Guest Configuration policy
- Install Guest Configuration prerequisites
- Audit Windows OS logon banner text
- Enable audit logging for Windows IPsec rules
- Enable audit logging for NTLM authentication
- Enable audit logging for account locking and set lockout threshold
- Audit Windows machines that do not restrict the minimum password length to 14 character
- Windows machines should meet requirements for 'Windows Firewall Properties'
- Audit PowerShell logging
- Audit Windows autorun settings
- Audit SChannel TLS registry settings
- Audit .net TLS registry settings
- Audit installation of PowerShell v2
- Audit RDP session timeout (screen locking)
- Windows Server 2016, 2019 & IE SCT policy baselines

#### Image build and distribution
- Shared Image Gallery
- Azure Image Builder (Packer) customisations
    - Windows
        - Set OS logon banner
        - Enable IPsec audit logging
        - Enable NTLM audit logging
        - Enable account lockout and failed logon audit logging
        - Set RDP idle session timeout
        - Disable SNMP service
        - Enable PowerShell logging
        - Disable Autorun
        - Enable/Disable TLS versions
        - Enable TLS auditing
        - Set Internet Explorer SCT baseline settings
        - Assign default WDAC policy
            - AllMicrosoft.xml template
            - User mode recommended block rules
            - Kernel mode recommended block rules
            - Intelligent security graph
            - Audit only
        - Enable Intelligent Security Graph event logging for WDAC
        - Enable Network Protection
        - Enable Exploit Protection (EMET) example configuration
        - Block shell hosts for standard users
        - Windows Server
            - Enable "Network Protection on Windows Server" setting
            - Windows Server 2019
                - Set Windows Server 2019 SCT baseline policy delta (from defaults)
                - Enable all Attack Surface Reduction rules
            - Windows Server 2016
                - Set Windows Server 2016 SCT baseline policy delta (from defaults)

### Example Azure Monitor Workbook (dashboard) with embedded KQL:
- windows-account-lockout-detect-failed-logins.kql
- windows-account-lockout-detect-lockouts.kql
- windows-asr-mitigation-events.kql
- windows-authentication-detect-lanman-ntlm.kql
- windows-authentication-detect-ntlm-events.kql
- windows-exploit-protection-events.kql
- windows-ipsec-detect-hmac-algorithms.kql
- windows-ipsec-detect-low-modulus-dh-groups.kql
- windows-ipsec-detect-mm-lifetime.kql
- windows-ipsec-detect-no-esp.kql
- windows-ipsec-detect-no-ike.kql
- windows-ipsec-detect-qm-lifetime.kql
- windows-ipsec-detect-sa-mode.kql
- windows-ipv6-detect-tunnel-protocols.kql
- windows-network-protection-events.kql
- windows-os-versions-detailed.kql
- windows-os-versions-summary.kql
- windows-services-detect-snmp.kql
- windows-software-detect-multiple-versions.kql
- windows-software-installed-applications.kql
- windows-software-updates-aged-updates.kql
- windows-software-updates-missing-timechart.kql
- windows-software-updates-system-state-summary.kql
- windows-software-updates-update-coverage-summary.kql
- windows-tls-detect-tls-version.kql
- windows-wdac-block-events.kql
- windows-wdac-isg-block-events.kql
- windows-wdac-policy-load-events.kql
- Unused IPv6 merged ARG & Logs query

#### Log Analytics solutions
- Change Tracking / Inventory
- Azure Defender for Servers

#### Log Analytics data sources
- Registry
    - HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters
    - HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa
    - HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion
- Event
    - Microsoft-Windows-NTLM/Operational
    - Microsoft-Windows-CodeIntegrity/Operational
    - Microsoft-Windows-AppLocker/MSI and Script
    - Microsoft-Windows-Security-Mitigations/KernelMode
    - Microsoft-Windows-Windows Defender/Operational
    - Microsoft-Windows-Security-Mitigations/UserMode
    - Microsoft-Windows-Win32k/Operational
    - Microsoft-Windows-Windows Defender/WHC
    - Security: All

## Getting started

### Prerequisites
Ensure you have prepared the following items:

- __Deployment Machine__

    To deploy the prototype to Azure, the following software should be installed on the deployment machine
    - [Powershell 7](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.1)
    - [Azure Powershell (AZ) Modules](https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-6.1.0)
    - [PowershellDSC Modules](https://github.com/PowerShell/DscResources)

    todo: test to see if we can use cloudshell to do an end to end deploy

- __Azure Subscription__

    Create a dedicated subscription for the purpose of prototype testing.
    Required roles - you will require the following roles in ARM / Azure AD.

- __Log Analytics workspace__

    The [Change tracking and Inventory](https://docs.microsoft.com/en-us/azure/automation/change-tracking/overview) and [Update Management](https://docs.microsoft.com/en-us/azure/automation/update-management/overview) features rely on a workspace that is in a [region that supports Automation Account linking](https://docs.microsoft.com/en-us/azure/automation/how-to/region-mappings). At time of publishing this is australiaeast (Sydney) or australiasoutheast (Melbourne).


- __Automation Account__

    Ensure the automation account is created in a region that is in accordance with the [supported mappings table](https://docs.microsoft.com/en-us/azure/automation/how-to/region-mappings#supported-mappings).

- __Link your Workspace and Automation account__
    
    add instructions here

### Prepare your inputs

In Powershell create a hashtable `$params` to hold your deployment parameters:

    $params = @{policyScopeId="/subscriptions/<subscriptionId>";
                workspaceId="<workspaceId>";
                workspaceResourceId="/subscriptions/<subscriptionId>/resourcegroups/<resourceGroupName>/providers/microsoft.operationalinsights/workspaces/<workspaceName>";
                workspaceRegion="Australia East";
                automationAccountResourceId="/subscriptions/<subscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.Automation/automationAccounts/<automationAccountName>";
                updateManagementScope=@("/subscriptions/<subscriptionId>")}

---

Input: `policyScopeId`

Describes the ARM management group / subscription location where the prototype policy definitions and assignments will be created.

---

Input: `workspaceId`

This is the workspaceId attribute of the Log Analytics workspace which will be used by the project to enable solutions and collect logs and other data sources.

---

Input: `workspaceResourceId`

This is the resourceId attribute of the Log Analytics workspace which will be used by the project to enable solutions and collect logs and other data sources.

---

Input: `workspaceRegion`

This is the Azure region of the Log Analytics workspace which will be used by the project to enable solutions and collect logs and other data sources.

---

Input: `automationAccountResourceId`

This is the resourceId attribute of the workspace-linked Automation Account.

---

Input: `updateManagementScope`

This is a collection of subscriptionIds which Update Management will be configured to manage.

### Deploy

Using the Az module, sign in to Azure Powershell:

    Connect-AzAccount

Select your test subscription:

    Set-AzContext -Subscription <subscriptionId>

Create a subscription-level deployment using the above parameters:

    New-AzSubscriptionDeployment `
        -Name CloudSOEDeployment 
        -Location australiaeast 
        -TemplateUri "https://github.com/azure/ausgovcaf-cloudsoe/azureDeploy.json" 
        -TemplateParameterObject $params

The deployment process will define and assign policy, configure Log Analytics, configure Automation Account, create a shared image gallery, and run the build process for Windows Server 2019 and Windows Server 2016 images.

### Operation

Once you deploy a virtual machine from your images, you can configure aspects of the VM via tags

#### Control update windows

Update Management has been configured with two update schedules. These schedules are at 3AM AEST/ADST on alternating nights. To enrol your virtual machines in these update windows use the `autoUpdateGroup` tag. 

For example: `autoUpdateGroup:1` or `autoUpdateGroup:2`

#### Control Automanage profiles

Two default Automanage profiles have been activated via Azure Policy - one intended for production systems, and one for non-production systems. The application of these profiles is controlled by the `Production` tag.

For example: `Production:true` or `Production:false` 

#### Reporting

The CloudSOE uses standard Azure features, and will use familiar management/monitoring tooling. You will find project-specific outputs in:
- Azure Policy - We use Guest Configuration to surface policy-compliance of settings on your SOE virtual machines.
- Azure Monitor Workbooks - We have created an example workbook to surface detailed event log and other system state information. 

## Making customisations

### Customising Image Builder: Source -> Target images

The image builder process takes an array of Azure marketplace images as source images an applies _customisations_ conditional on the source image, and then builds a target image in the shared image gallery. 

When invoking the deployment of the image template, the image builder will build two images by default, depending on the `buildImages` parameter:

    "parameters" : {
        ...
        "buildImages": {
            "type": "array",
            "allowedValues": [
                "WindowsServer2019",
                "WindowsServer2016"
            ],
            "defaultValue": [
                "WindowsServer2019",
                "WindowsServer2016"
            ],
            "metadata": {
                "description": "Set of images to build."
            }
        },
        ...
    }

The values specified in the `buildImages` (array) parameter are by the template to select the source image, but indexing into an `imagePropertySet` variable. In this example, the `imagePropertiesSet.WindowsServer2019` object contains all the information necessary to select a source image, and populate the properties of the built image:

    "variables": {
        "imagePropertiesSet":{
            "WindowsServer2019": {
                "osType": "Windows",
                "source": {
                    "type": "PlatformImage",
                    "publisher": "MicrosoftWindowsServer",
                    "offer": "WindowsServer",
                    "sku": "2019-Datacenter",
                    "version": "latest"
                },
                "soePublisher": "[parameters('publisher')]",
                "soeOffer": "WindowsServerSOE",
                "soeSku": "WindowsServer2019SOE",
                "soeDescription": "Windows Server 2019 SOE"
            },
            ...
        }
        ...
    }

### Customising Image Builder: Customisations

[Customisations](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/image-builder-json#properties-customize) are the construct used by [Azure Image Builder](https://docs.microsoft.com/en-us/azure/virtual-machines/image-builder-overview) to apply changes to an image as it is transformed from source to target. It is anticipated that as the project scales, a number of operating system customisations will apply multiple times to images with common properties. For example, there are a number of customisations that might apply to all Windows images, both client and server. Similarly, a number of customisations will apply to all Windows Server versions. Lastly, there may be specific customisations that apply only to a specific version of Windows Server OS.

To optimise for the above, the project uses a custom `buildImageCustomisationAssignments` data structure, under which all customisation will sit. The template will extract all the applicable customisations, based on OS type, publisher, offer, and SKU, and union them into the final set of customisations. At a macro-level, the `buildImageCustomisationAssignments` data structure has the following structure:

    "buildImageCustomisationAssignments": {
        "windows": {
            "customisations":[
                //Customisations that apply to all Windows systems
            ],
            "MicrosoftWindowsServer": {
                "customisations":[
                    //Customisations that apply to all Windows Server systems
                ],
                "WindowsServer": {
                    "customisations":[],
                    "2019-Datacenter": {
                        "customisations":[
                            //Customisations that apply to all Windows Server 2019 systems
                        ]
                    },
                    "2016-Datacenter": {
                        "customisations":[
                            //Customisations that apply to all Windows Server 2016 systems
                        ]
                    }
                }
            }
        }
    }

During build the `buildImageCustomisationAssignments` data structure is indexed by the properties of the `imagePropertiesSet.<buildImages[copyIndex()]>.source` object, as specified in section __Customising Image Builder: Source -> Target images__

### Customising Policy

The project relies on both built-in and custom policy. When working with policy in the project, you will need to consider both the policy definition, and the policy assignment aspects.

#### Customising policy definitions

Each policy definition in the project is defined by its own linked ARM template. You will find all custom project policies under path `/policies/`. E.g. `/policies/gc-tls-audit-logging/policy.template.json`.

> __Important!__
>
> Any policy definition templates used in the template should have a `policyName` (string) parameter specified in the `parameters:{}` section of the template, and a `policyDefinitionId` (string) output specified in the `outputs:{}` section of the template.
>
> See existing policies for examples.

Once you have developed a functional ARM template that creates your `policyDefinition` resource, you will need to ensure the template is invoked as a linked template by `arm-cloudsoe-policy-baseline.json`. The process of invoking linked templates has been simplified. Rather than defining the linked template, you only need to create a reference in the `policyDefinitions` (array) variable in arm-cloudsoe-policy-baseline.json.

    "variables": {
        ...
        "policyDefinitions":[
            {
                "relativeUri": "policies/enable-automanage-profile/policy.template.json",
                "customPolicyDefinitionName": "enable-automanage-profile-based-on-tag"
            },
            ...
            {
                "relativeUri": "policies/new-policy-path/policy.template.json",
                "customPolicyDefinitionName": "new-policy-name"
            }
    }

---

Input: `relativeUri`

This is the relative path of the template to invoke as a linked template. This template should create a policyDefintion and implement a `policyName` (string) attribute and `policyDefinitionId` (string) output as described above.

---

Input: `customPolicyDefinitionName`

This is a unique name (not display name) for the policyDefinition that also be used in policy assignment references.

##### Customising policy definitions: Guest Configuration policy

Generating Guest Configuration Policy involves creation of both Guest Configuration packages and policy templates. For instructions on how to develop Guest Configuration, follow [this guide](https://docs.microsoft.com/en-us/azure/governance/policy/how-to/guest-configuration-create). 

Once you have a package and a policy template, you can embed them in the project as described above. In this project we store Guest Configuration packages in `/guest-configuration/` and policy templates in `/policies/`.

#### Customising policy assignments

The process of creating policy assignments in the poject has been simplified. Rather than defining distinct `policyAssignment` resources, a copy block is used for assigning both built-in and custom policy definitions. You only need to create a reference in the `policyAssignments` (array) variable in arm-cloudsoe-policy-baseline.json.

    "policyAssignments": [
    ...
        {
            "assignmentName": "disk-encryption",
            "displayName": "Disk encryption should be applied on virtual machines",
            "definition": {
                "builtinPolicyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/0961003e-5a0a-4549-abde-af6a37f2724d"
            },
            "parameters": {}
        },
    ...
        {
            "assignmentName": "gc-ipsec-audit-logging",
            "displayName": "Enable audit logging for Windows IPsec rules.",
            "definition": {
                "customPolicyDefinitionName": "gc-ipsec-audit-logging"
            },
            "parameters": {}
        },
    ...
    ]

The above example shows two example assignments: one where the assignment references a built-in policyDefinition via the `definition.builtinPolicyDefinitionId` reference, and another that references a custom policyDefinition via the `definition.customPolicyDefinitionName` reference. The use of `definition.customPolicyDefinitionName` means that we can resolve the policy definition reference at deployment time, based on the name assign in the __Customising policy definitions__ section above.

##### Customising policy assignments: Parameters

When creating a policy assignment in the `policyAssignments` variable, using the provided data structure, you may also need to provide parameters into that assignment. Below is an example, using the parameters object:

    {
        "assignmentName": "tag-vm-resources-prod",
        "displayName": "Tag all deployed VMs as production by default",
        "definition": {
            "customPolicyDefinitionName": "tag-vm-resources",
            "roleDefinitionIds": [
                "b24988ac-6180-42a0-ab88-20f7382dd24c"
            ]
        },
        "parameters": {
            "tagName": {
                "value": "Production"
            },
            "tagValue": {
                "value": "True"
            }
        }
    }

## Roadmap
We hope that future development of the CloudSOE project will be :sparkles:community-driven:sparkles:. We can think of a number of enhancements that would improve the utility of the solution, such as: 
- Test/build Azure Arc for on-premises and other cloud management
- Add Linux support 
- Move to policy-based setting enforcement (I.e. not just audit)
- ESLZ integration
- Review and implement delta guidelines since November 2020 ISM

## Contributing

This project welcomes contributions and suggestions!

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft 
trademarks or logos is subject to and must follow 
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
