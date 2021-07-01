Install-Module 'PSDscResources'

Configuration TLSAuditLogging
{

    Import-DscResource -ModuleName 'PSDscResources'

    Node localhost {
        Registry 'Enable TLS Schannel event logging in Windows Server'
        {
            Ensure = 'Present'
            Key = "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\SecurityProviders\SCHANNEL"
            ValueName = "EventLogging"
            ValueData = "5"
            ValueType = "Dword"
        }

    }
}

TLSAuditLogging
