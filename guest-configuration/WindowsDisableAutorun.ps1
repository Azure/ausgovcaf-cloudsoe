# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

Install-Module 'PSDscResources'

Configuration WindowsDisableAutorun
{

    Import-DscResource -ModuleName 'PSDscResources'

    Node localhost {
        Registry 'Ensure autorun is disabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
            ValueName = "NoDriveTypeAutoRun"
            ValueData = "255"
            ValueType = "Dword"
        }
    }
}

WindowsDisableAutorun
