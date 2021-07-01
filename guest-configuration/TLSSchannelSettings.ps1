Install-Module 'PSDscResources'

Configuration TLSSchannelSettings
{

    Import-DscResource -ModuleName 'PSDscResources'

    Node localhost {
         Registry 'TLS 1.2 Server:Enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server"
            ValueName = "Enabled"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'TLS 1.2 Server:DisabledByDefault'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server"
            ValueName = "DisabledByDefault"
            ValueData = "0"
            ValueType = "Dword"
        }
        
        Registry 'TLS 1.2 Client:Enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client"
            ValueName = "Enabled"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'TLS 1.2 Client:DisabledByDefault'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client"
            ValueName = "DisabledByDefault"
            ValueData = "0"
            ValueType = "Dword"
        }

        Registry 'SSL 2.0 Client:Enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client"
            ValueName = "Enabled"
            ValueData = "0"
            ValueType = "Dword"
        }

        Registry 'SSL 2.0 Client:DisabledByDefault'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client"
            ValueName = "DisabledByDefault"
            ValueData = "1"
            ValueType = "Dword"
        }
               
        Registry 'SSL 2.0 Server:Enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server"
            ValueName = "Enabled"
            ValueData = "0"
            ValueType = "Dword"
        }

        Registry 'SSL 2.0 Server:DisabledByDefault'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server"
            ValueName = "DisabledByDefault"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'SSL 3.0 Client:Enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client"
            ValueName = "Enabled"
            ValueData = "0"
            ValueType = "Dword"
        }

        Registry 'SSL 3.0 Client:DisabledByDefault'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client"
            ValueName = "DisabledByDefault"
            ValueData = "1"
            ValueType = "Dword"
        }
               
        Registry 'SSL 3.0 Server:Enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server"
            ValueName = "Enabled"
            ValueData = "0"
            ValueType = "Dword"
        }

        Registry 'SSL 3.0 Server:DisabledByDefault'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server"
            ValueName = "DisabledByDefault"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'TLS 1.0 Client:Enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client"
            ValueName = "Enabled"
            ValueData = "0"
            ValueType = "Dword"
        }

        Registry 'TLS 1.0 Client:DisabledByDefault'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client"
            ValueName = "DisabledByDefault"
            ValueData = "1"
            ValueType = "Dword"
        }
               
        Registry 'TLS 1.0 Server:Enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server"
            ValueName = "Enabled"
            ValueData = "0"
            ValueType = "Dword"
        }

        Registry 'TLS 1.0 Server:DisabledByDefault'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server"
            ValueName = "DisabledByDefault"
            ValueData = "1"
            ValueType = "Dword"
        }

        Registry 'TLS 1.1 Client:Enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client"
            ValueName = "Enabled"
            ValueData = "0"
            ValueType = "Dword"
        }

        Registry 'TLS 1.1 Client:DisabledByDefault'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client"
            ValueName = "DisabledByDefault"
            ValueData = "1"
            ValueType = "Dword"
        }
               
        Registry 'TLS 1.1 Server:Enabled'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server"
            ValueName = "Enabled"
            ValueData = "0"
            ValueType = "Dword"
        }

        Registry 'TLS 1.1 Server:DisabledByDefault'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server"
            ValueName = "DisabledByDefault"
            ValueData = "1"
            ValueType = "Dword"
        }      


    }
}

TLSSchannelSettings