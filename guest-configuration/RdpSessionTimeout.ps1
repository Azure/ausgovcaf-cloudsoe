# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

Install-Module 'PSDscResources'

Configuration RdpSessionTimeout
{

    Import-DscResource -ModuleName 'PSDscResources'

    Node localhost {
        Registry 'Ensure specified remote desktop session timeout'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services"
            ValueName = "MaxIdleTime"
            ValueData = "780000"
            ValueType = "Dword"
        }
    }
}

RdpSessionTimeout
