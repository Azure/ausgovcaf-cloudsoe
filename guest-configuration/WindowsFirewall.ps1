# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

Install-Module 'PSDscResources'

Configuration WindowsFirewall
{

    Import-DscResource -ModuleName 'PSDscResources'

    Node localhost {

        Service 'Ensure Windows Firewall service is running'
        {
            Name = "mpssvc"
            StartupType = "Automatic"
            State = "Running"
            Ensure = "Present"
        }

        Registry 'Ensure Windows Firewall domain profile is enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile"
            ValueName = "EnableFirewall"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure Windows Firewall domain profile blocks inbound by default'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile"
            ValueName = "DefaultInboundAction"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure Windows Firewall public profile is enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile"
            ValueName = "EnableFirewall"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure Windows Firewall public profile blocks inbound by default'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile"
            ValueName = "DefaultInboundAction"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure Windows Firewall private profile is enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandarProfile"
            ValueName = "EnableFirewall"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'Ensure Windows Firewall private profile blocks inbound by default'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile"
            ValueName = "DefaultInboundAction"
            ValueData = "1"
            ValueType = "Dword"
        }    
    }
}

WindowsFirewall
