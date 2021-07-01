# About this project

The CloudSOE project aims to develop a community-driven, cloud-native, multi-platform Standard Operating Environment for organisations that adopt Information Security Manual (ISM) guidelines when building information systems.

The project uses a collection of cloud-native technologies to achieve desired outcomes for Azure (and in future, on-premises & other cloud) IaaS systems:
- Azure Image Builder
- Azure Policy & Guest Configuration
- Azure Monitor 
- Azure Automation
- Azure Automanage

The example code in this repository should be considered a functional prototype which you can learn from and apply in your own sandpit subscriptions.

# What we deploy and configure

The current prototype version of the CloudSOE implements the following features:

## Enable Azure Automanage for virtual machines
- Profile: _Azure virtual machine best practices - Dev/test_ for non-production systems
- Profile: _Azure virtual machine best practices - Production_ for non-production systems

## Enable Azure Defender for Servers
- Enable on Log Analytics workstation
- Enable for target subscription

## Configure Azure Update Management
- Enable Log Analytics solution
- Schedule alternating daily patching windows (Tag with AutoUpdateGroup:1 or AutoUpdateGroup:2) 

## Tagging Defaults
- Tag all SOE-deployed VMs as SOE:True for discovery
- Tag all VMs as Production:True unless otherwise tagged

## Assign built-in Azure Policy
- Enable Azure Azure Monitor for VMs
- Disk encryption should be applied on virtual machines
- Deploy vulnerability assessment solution on virtual machines
- Azure Security Benchmark

## Guest Configuration policy
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

## Image build and distribution
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

## Example Azure Monitor Workbook (dashboard) with embedded KQL:
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

## Log Analytics solutions
- Change Tracking / Inventory
- Azure Defender for Servers

## Log Analytics data sources
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


# Getting started

## Prerequisites
Ensure you have prepared the following items:
- __Azure Subscription__

    Create a dedicated subscription for the purpose of prototype testing.

- __Log Analytics workspace__

    Ensure the workspace is created in a [region that supports Automation Account linking](https://docs.microsoft.com/en-us/azure/automation/how-to/region-mappings).

- __Automation Account__

    Ensure the automation account is created in a region that is in accordance with the [supported mappings table](https://docs.microsoft.com/en-us/azure/automation/how-to/region-mappings#supported-mappings).

- __Link your Workspace and Automation account__



## Prepare your inputs

Create a hashtable `$params` to hold your deployment parameters:

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

## Deploy

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

# Operation

Once you deploy a virtual machine from your images, you can configure aspects of the VM via tags.

## Control update windows

Update Management has been configured with two update schedules. These schedules are at 3AM AEST/ADST on alternating nights. To enrol your virtual machines in these update windows use the `autoUpdateGroup` tag. 

For example: `autoUpdateGroup:1` or `autoUpdateGroup:2`

## Control Automanage profiles

Two default Automanage profiles have been activated via Azure Policy - one intended for production systems, and one for non-production systems. The application of these profiles is controlled by the `Production` tag.

For example: `Production:true` or `Production:false` 

## Reporting

The CloudSOE uses standard Azure features, and will use familiar management/monitoring tooling. You will find project-specific outputs in:
- Azure Policy - We use Guest Configuration to surface policy-compliance of your virtual machines.
- Azure Monitor Workbooks - We have created an example workbook to surface detailed event log and other system state information. 