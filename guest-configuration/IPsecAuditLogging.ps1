# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

Install-Module 'PSDscResources' -Force
Install-Module 'AuditPolicyDsc' -Force

Configuration IPsecAuditLogging
{

    Import-DscResource -ModuleName 'AuditPolicyDsc'
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

        AuditPolicySubcategory 'Ensure IPsec Main Mode audit logging subcategory is enabled for success events'
        {
            Ensure = 'Present'
            Name = 'IPsec Main Mode'
            AuditFlag = 'Success'
        }
        AuditPolicySubcategory 'Ensure IPsec Quick Mode audit logging subcategory is enabled for success events'
        {
            Ensure = 'Present'
            Name = 'IPsec Quick Mode'
            AuditFlag = 'Success'
        }
    }
}

IPsecAuditLogging