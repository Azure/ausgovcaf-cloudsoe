Install-Module 'PSDscResources' -Force
Install-Module 'AuditPolicyDsc' -Force
Install-Module 'SecurityPolicyDsc' -Force

Configuration WindowsAccountLockout
{

    Import-DscResource -ModuleName 'AuditPolicyDsc'
    Import-DscResource -ModuleName 'SecurityPolicyDsc'
    Import-DscResource -ModuleName 'PSDscResources'

    Node localhost {
        Registry 'Enable Audit policy subcategory settings'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\LSA"
            ValueName = "SCENoApplyLegacyAuditPolicy"
            ValueData = "1"
            ValueType = "Dword"
        }

        AuditPolicySubcategory 'Ensure User Account Management audit logging subcategory is enabled for success events'
        {
            Ensure = 'Present'
            Name = 'User Account Management'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Ensure Logon audit logging subcategory is enabled for failure events'
        {
            Ensure = 'Present'
            Name = 'Logon'
            AuditFlag = 'Failure'
        }

        AccountPolicy 'Ensure account lockout threshold is set to 5 attempts'
        {
            Name                                        = 'AccountPolicy'
            Account_lockout_threshold                   = 5
        }
    }
}

WindowsAccountLockout