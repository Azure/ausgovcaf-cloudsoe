# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

Install-Module 'PSDscResources'

Configuration PowerShellLogging
{

    Import-DscResource -ModuleName 'PSDscResources'

    Node localhost {
        Registry 'Ensure PowerShell script block logging is enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
            ValueName = "EnableScriptBlockLogging"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure PowerShell module logging is enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging"
            ValueName = "EnableModuleLogging"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure PowerShell module logging modules are set'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames"
            ValueName = "*"
            ValueData = "*"
            ValueType = "String"
        }

        Registry 'Ensure PowerShell transcription is enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription"
            ValueName = "EnableTranscripting"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure PowerShell transcription invocation headers option is enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription"
            ValueName = "EnableInvocationHeader"
            ValueData = "1"
            ValueType = "Dword"
        }
    }
}

PowerShellLogging