﻿# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

Configuration IEBaseline
{
     Import-DscResource -ModuleName 'PSDscResources'

	Node localhost
	{
         Registry 'Registry: HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Ext\RunThisTimeEnabled'
         {
              ValueName = 'RunThisTimeEnabled'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Ext'
         }

         Registry 'Registry: HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Ext\VersionCheckEnabled'
         {
              ValueName = 'VersionCheckEnabled'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Ext'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Download\RunInvalidSignatures'
         {
              ValueName = 'RunInvalidSignatures'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Download'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Download\CheckExeSignatures'
         {
              ValueName = 'CheckExeSignatures'
              ValueData = 'yes'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Download'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\Isolation64Bit'
         {
              ValueName = 'Isolation64Bit'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\DisableEPMCompat'
         {
              ValueName = 'DisableEPMCompat'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\Isolation'
         {
              ValueName = 'Isolation'
              ValueData = 'PMEM'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL\(Reserved)'
         {
              ValueName = '(Reserved)'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL\iexplore.exe'
         {
              ValueName = 'iexplore.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL\explorer.exe'
         {
              ValueName = 'explorer.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING\explorer.exe'
         {
              ValueName = 'explorer.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING\iexplore.exe'
         {
              ValueName = 'iexplore.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING\(Reserved)'
         {
              ValueName = '(Reserved)'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING\explorer.exe'
         {
              ValueName = 'explorer.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING\iexplore.exe'
         {
              ValueName = 'iexplore.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING\(Reserved)'
         {
              ValueName = '(Reserved)'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\(Reserved)'
         {
              ValueName = '(Reserved)'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\explorer.exe'
         {
              ValueName = 'explorer.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\iexplore.exe'
         {
              ValueName = 'iexplore.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\(Reserved)'
         {
              ValueName = '(Reserved)'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\iexplore.exe'
         {
              ValueName = 'iexplore.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\explorer.exe'
         {
              ValueName = 'explorer.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND\(Reserved)'
         {
              ValueName = '(Reserved)'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND\iexplore.exe'
         {
              ValueName = 'iexplore.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND\explorer.exe'
         {
              ValueName = 'explorer.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\iexplore.exe'
         {
              ValueName = 'iexplore.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\(Reserved)'
         {
              ValueName = '(Reserved)'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\explorer.exe'
         {
              ValueName = 'explorer.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\(Reserved)'
         {
              ValueName = '(Reserved)'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\explorer.exe'
         {
              ValueName = 'explorer.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\iexplore.exe'
         {
              ValueName = 'iexplore.exe'
              ValueData = '1'
              ValueType = 'String'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter\PreventOverrideAppRepUnknown'
         {
              ValueName = 'PreventOverrideAppRepUnknown'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter\PreventOverride'
         {
              ValueName = 'PreventOverride'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter\EnabledV9'
         {
              ValueName = 'EnabledV9'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoCrashDetection'
         {
              ValueName = 'NoCrashDetection'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Restrictions'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Security\DisableSecuritySettingsCheck'
         {
              ValueName = 'DisableSecuritySettingsCheck'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Security'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Internet Explorer\Security\ActiveX\BlockNonAdminActiveXInstall'
         {
              ValueName = 'BlockNonAdminActiveXInstall'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Security\ActiveX'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\AxInstaller\OnlyUseAXISForActiveXInstall'
         {
              ValueName = 'OnlyUseAXISForActiveXInstall'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\AxInstaller'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Security_zones_map_edit'
         {
              ValueName = 'Security_zones_map_edit'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Security_options_edit'
         {
              ValueName = 'Security_options_edit'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Security_HKLM_only'
         {
              ValueName = 'Security_HKLM_only'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\CertificateRevocation'
         {
              ValueName = 'CertificateRevocation'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\PreventIgnoreCertErrors'
         {
              ValueName = 'PreventIgnoreCertErrors'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\WarnOnBadCertRecving'
         {
              ValueName = 'WarnOnBadCertRecving'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\EnableSSL3Fallback'
         {
              ValueName = 'EnableSSL3Fallback'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\SecureProtocols'
         {
              ValueName = 'SecureProtocols'
              ValueData = 2560
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0\1C00'
         {
              ValueName = '1C00'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1\1C00'
         {
              ValueName = '1C00'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2\1C00'
         {
              ValueName = '1C00'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3\2301'
         {
              ValueName = '2301'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4\2301'
         {
              ValueName = '2301'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4\1C00'
         {
              ValueName = '1C00'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\UNCAsIntranet'
         {
              ValueName = 'UNCAsIntranet'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1C00'
         {
              ValueName = '1C00'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\270C'
         {
              ValueName = '270C'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\270C'
         {
              ValueName = '270C'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\1201'
         {
              ValueName = '1201'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\1C00'
         {
              ValueName = '1C00'
              ValueData = 65536
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2\1C00'
         {
              ValueName = '1C00'
              ValueData = 65536
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2\270C'
         {
              ValueName = '270C'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2\1201'
         {
              ValueName = '1201'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2001'
         {
              ValueName = '2001'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2102'
         {
              ValueName = '2102'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1802'
         {
              ValueName = '1802'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\160A'
         {
              ValueName = '160A'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1201'
         {
              ValueName = '1201'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1406'
         {
              ValueName = '1406'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1804'
         {
              ValueName = '1804'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2200'
         {
              ValueName = '2200'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1209'
         {
              ValueName = '1209'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1206'
         {
              ValueName = '1206'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1809'
         {
              ValueName = '1809'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2500'
         {
              ValueName = '2500'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2103'
         {
              ValueName = '2103'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1606'
         {
              ValueName = '1606'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2402'
         {
              ValueName = '2402'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2004'
         {
              ValueName = '2004'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1C00'
         {
              ValueName = '1C00'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1001'
         {
              ValueName = '1001'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1A00'
         {
              ValueName = '1A00'
              ValueData = 65536
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2708'
         {
              ValueName = '2708'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1004'
         {
              ValueName = '1004'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\120b'
         {
              ValueName = '120b'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1407'
         {
              ValueName = '1407'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1409'
         {
              ValueName = '1409'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\270C'
         {
              ValueName = '270C'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1607'
         {
              ValueName = '1607'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2709'
         {
              ValueName = '2709'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2101'
         {
              ValueName = '2101'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2301'
         {
              ValueName = '2301'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1806'
         {
              ValueName = '1806'
              ValueData = 1
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\120c'
         {
              ValueName = '120c'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\140C'
         {
              ValueName = '140C'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1608'
         {
              ValueName = '1608'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1201'
         {
              ValueName = '1201'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1001'
         {
              ValueName = '1001'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1607'
         {
              ValueName = '1607'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\120b'
         {
              ValueName = '120b'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1809'
         {
              ValueName = '1809'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1004'
         {
              ValueName = '1004'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1606'
         {
              ValueName = '1606'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1407'
         {
              ValueName = '1407'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\160A'
         {
              ValueName = '160A'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1406'
         {
              ValueName = '1406'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2102'
         {
              ValueName = '2102'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2004'
         {
              ValueName = '2004'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2200'
         {
              ValueName = '2200'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2000'
         {
              ValueName = '2000'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1402'
         {
              ValueName = '1402'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1803'
         {
              ValueName = '1803'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2402'
         {
              ValueName = '2402'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1400'
         {
              ValueName = '1400'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1A00'
         {
              ValueName = '1A00'
              ValueData = 196608
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2001'
         {
              ValueName = '2001'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2500'
         {
              ValueName = '2500'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1409'
         {
              ValueName = '1409'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1C00'
         {
              ValueName = '1C00'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1209'
         {
              ValueName = '1209'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\270C'
         {
              ValueName = '270C'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1206'
         {
              ValueName = '1206'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2708'
         {
              ValueName = '2708'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1802'
         {
              ValueName = '1802'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2103'
         {
              ValueName = '2103'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2709'
         {
              ValueName = '2709'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1405'
         {
              ValueName = '1405'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2101'
         {
              ValueName = '2101'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2301'
         {
              ValueName = '2301'
              ValueData = 0
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1200'
         {
              ValueName = '1200'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1804'
         {
              ValueName = '1804'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1806'
         {
              ValueName = '1806'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\120c'
         {
              ValueName = '120c'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }

         Registry 'Registry: HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\140C'
         {
              ValueName = '140C'
              ValueData = 3
              ValueType = 'Dword'
              Ensure = 'Present'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
         }
     }
}
IEBaseline
