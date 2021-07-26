# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

Install-Module 'PSDscResources'

Configuration NtlmAuditLogging
{

    Import-DscResource -ModuleName 'PSDscResources'

    Node localhost {
        Registry 'Ensure Audit Incomming NTLM Traffic is enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\LSA\MSV1_0"
            ValueName = "AuditReceivingNTLMTraffic"
            ValueData = "2"
            ValueType = "Dword"
        }

        Registry 'Ensure Audit Outgoing NTLM Traffic is enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\LSA\MSV1_0"
            ValueName = "RestrictSendingNTLMTraffic"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure Audit NTLM authentication in the domain is enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters"
            ValueName = "AuditNTLMInDomain"
            ValueData = "7"
            ValueType = "Dword"
        }
    }
}

NtlmAuditLogging
