# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

Install-Module 'PSDscResources'

Configuration TLSDotNetSettings
{

    Import-DscResource -ModuleName 'PSDscResources'

    Node localhost {
        Registry 'Disable .NET 4.0/4.5 app selection of TLS version and use system default x86 compat'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\.NETFramework\v4.0.30319"
            ValueName = "SystemDefaultTlsVersions"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Disable .NET 4.0/4.5 app selection of TLS version and use system default x64 native'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\.NETFramework\v4.0.30319"
            ValueName = "SystemDefaultTlsVersions"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure strong cryptography for .NET 4.0/4.5 applications x86 compat'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\.NETFramework\v4.0.30319"
            ValueName = "SchUseStrongCrypto"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure strong cryptography for .NET 4.0/4.5 applications x64 native'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\.NETFramework\v4.0.30319"
            ValueName = "SchUseStrongCrypto"
            ValueData = "1"
            ValueType = "Dword"
        }
        Registry 'Disable .NET 3.5 app selection of TLS version and use system default x86 compat'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\.NETFramework\v2.0.50727"
            ValueName = "SystemDefaultTlsVersions"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure strong cryptography for .NET 3.5 applications x86 compat'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\.NETFramework\v2.0.50727"
            ValueName = "SchUseStrongCrypto"
            ValueData = "1"
            ValueType = "Dword"
        }

    }
}

TLSDotNetSettings