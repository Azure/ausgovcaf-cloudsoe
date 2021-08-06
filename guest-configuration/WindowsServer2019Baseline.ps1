# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

Configuration WindowsServer2019Baseline
{

	Import-DSCResource -ModuleName 'GPRegistryPolicyDsc'
	Import-DSCResource -ModuleName 'AuditPolicyDSC'
	Import-DSCResource -ModuleName 'SecurityPolicyDSC'
	Node localhost
	{
         AuditPolicySubcategory 'Audit Credential Validation (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Credential Validation'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Credential Validation (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Credential Validation'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Security Group Management (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Security Group Management'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Security Group Management (Failure) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Security Group Management'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit User Account Management (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'User Account Management'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit User Account Management (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'User Account Management'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit PNP Activity (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Plug and Play Events'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit PNP Activity (Failure) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Plug and Play Events'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Process Creation (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Process Creation'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Process Creation (Failure) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Process Creation'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Account Lockout (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Account Lockout'
              AuditFlag = 'Failure'
         }

          AuditPolicySubcategory 'Audit Account Lockout (Success) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Account Lockout'
              AuditFlag = 'Success'
         }

         AuditPolicySubcategory 'Audit Group Membership (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Group Membership'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Group Membership (Failure) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Group Membership'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Logon (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Logon'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Logon (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Logon'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Other Logon/Logoff Events (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Other Logon/Logoff Events'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Other Logon/Logoff Events (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Other Logon/Logoff Events'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Special Logon (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Special Logon'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Special Logon (Failure) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Special Logon'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Detailed File Share (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Detailed File Share'
              AuditFlag = 'Failure'
         }

          AuditPolicySubcategory 'Audit Detailed File Share (Success) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Detailed File Share'
              AuditFlag = 'Success'
         }

         AuditPolicySubcategory 'Audit File Share (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'File Share'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit File Share (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'File Share'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Other Object Access Events (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Other Object Access Events'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Other Object Access Events (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Other Object Access Events'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Removable Storage (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Removable Storage'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Removable Storage (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Removable Storage'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Audit Policy Change (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Audit Policy Change'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Audit Policy Change (Failure) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Audit Policy Change'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Authentication Policy Change (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Authentication Policy Change'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Authentication Policy Change (Failure) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Authentication Policy Change'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit MPSSVC Rule-Level Policy Change (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'MPSSVC Rule-Level Policy Change'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit MPSSVC Rule-Level Policy Change (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'MPSSVC Rule-Level Policy Change'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Other Policy Change Events (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Other Policy Change Events'
              AuditFlag = 'Failure'
         }

          AuditPolicySubcategory 'Audit Other Policy Change Events (Success) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Other Policy Change Events'
              AuditFlag = 'Success'
         }

         AuditPolicySubcategory 'Audit Sensitive Privilege Use (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Sensitive Privilege Use'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Sensitive Privilege Use (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Sensitive Privilege Use'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Other System Events (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Other System Events'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Other System Events (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Other System Events'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Security State Change (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Security State Change'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Security State Change (Failure) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Security State Change'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit Security System Extension (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'Security System Extension'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit Security System Extension (Failure) - Inclusion'
         {
              Ensure = 'Absent'
              Name = 'Security System Extension'
              AuditFlag = 'Failure'
         }

         AuditPolicySubcategory 'Audit System Integrity (Success) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'System Integrity'
              AuditFlag = 'Success'
         }

          AuditPolicySubcategory 'Audit System Integrity (Failure) - Inclusion'
         {
              Ensure = 'Present'
              Name = 'System Integrity'
              AuditFlag = 'Failure'
         }

         SecurityOption 'SecuritySetting(INF): EnableGuestAccount'
         {
              Accounts_Guest_account_status = 'Disabled'
              Name = 'Accounts_Guest_account_status'
         }

         SecurityOption 'SecuritySetting(INF): LSAAnonymousNameLookup'
         {
              Name = 'Network_access_Allow_anonymous_SID_Name_translation'
              Network_access_Allow_anonymous_SID_Name_translation = 'Disabled'
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_through_Remote_Desktop_Services'
         {
              Identity = @('*S-1-5-113')
              Policy = 'Deny_log_on_through_Remote_Desktop_Services'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Impersonate_a_client_after_authentication'
         {
              Identity = @('*S-1-5-32-544', '*S-1-5-6', '*S-1-5-19', '*S-1-5-20')
              Policy = 'Impersonate_a_client_after_authentication'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Restore_files_and_directories'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Restore_files_and_directories'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Allow_log_on_locally'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Allow_log_on_locally'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Access_this_computer_from_the_network'
         {
              Identity = @('*S-1-5-32-544', '*S-1-5-11')
              Policy = 'Access_this_computer_from_the_network'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Load_and_unload_device_drivers'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Load_and_unload_device_drivers'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Force_shutdown_from_a_remote_system'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Force_shutdown_from_a_remote_system'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Create_permanent_shared_objects'
         {
              Identity = @('')
              Policy = 'Create_permanent_shared_objects'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Perform_volume_maintenance_tasks'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Perform_volume_maintenance_tasks'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Create_a_token_object'
         {
              Identity = @('')
              Policy = 'Create_a_token_object'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Profile_single_process'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Profile_single_process'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Manage_auditing_and_security_log'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Manage_auditing_and_security_log'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Debug_programs'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Debug_programs'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Take_ownership_of_files_or_other_objects'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Take_ownership_of_files_or_other_objects'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Create_a_pagefile'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Create_a_pagefile'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Enable_computer_and_user_accounts_to_be_trusted_for_delegation'
         {
              Identity = @('')
              Policy = 'Enable_computer_and_user_accounts_to_be_trusted_for_delegation'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Create_global_objects'
         {
              Identity = @('*S-1-5-32-544', '*S-1-5-6', '*S-1-5-19', '*S-1-5-20')
              Policy = 'Create_global_objects'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Lock_pages_in_memory'
         {
              Identity = @('')
              Policy = 'Lock_pages_in_memory'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Modify_firmware_environment_values'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Modify_firmware_environment_values'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Deny_access_to_this_computer_from_the_network'
         {
              Identity = @('*S-1-5-114')
              Policy = 'Deny_access_to_this_computer_from_the_network'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Access_Credential_Manager_as_a_trusted_caller'
         {
              Identity = @('')
              Policy = 'Access_Credential_Manager_as_a_trusted_caller'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Act_as_part_of_the_operating_system'
         {
              Identity = @('')
              Policy = 'Act_as_part_of_the_operating_system'
              Force = $True
         }

         UserRightsAssignment 'UserRightsAssignment(INF): Back_up_files_and_directories'
         {
              Identity = @('*S-1-5-32-544')
              Policy = 'Back_up_files_and_directories'
              Force = $True
         }

         SecurityOption 'SecurityRegistry(INF): User_Account_Control_Behavior_of_the_elevation_prompt_for_administrators_in_Admin_Approval_Mode'
         {
              Name = 'User_Account_Control_Behavior_of_the_elevation_prompt_for_administrators_in_Admin_Approval_Mode'
              User_Account_Control_Behavior_of_the_elevation_prompt_for_administrators_in_Admin_Approval_Mode = 'Prompt for consent on the secure desktop'
         }

         SecurityOption 'SecurityRegistry(INF): Domain_member_Require_strong_Windows_2000_or_later_session_key'
         {
              Name = 'Domain_member_Require_strong_Windows_2000_or_later_session_key'
              Domain_member_Require_strong_Windows_2000_or_later_session_key = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): User_Account_Control_Virtualize_file_and_registry_write_failures_to_per_user_locations'
         {
              Name = 'User_Account_Control_Virtualize_file_and_registry_write_failures_to_per_user_locations'
              User_Account_Control_Virtualize_file_and_registry_write_failures_to_per_user_locations = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): Domain_member_Maximum_machine_account_password_age'
         {
              Name = 'Domain_member_Maximum_machine_account_password_age'
              Domain_member_Maximum_machine_account_password_age = $null
         }

         SecurityOption 'SecurityRegistry(INF): Network_security_Do_not_store_LAN_Manager_hash_value_on_next_password_change'
         {
              Name = 'Network_security_Do_not_store_LAN_Manager_hash_value_on_next_password_change'
              Network_security_Do_not_store_LAN_Manager_hash_value_on_next_password_change = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): Interactive_logon_Smart_card_removal_behavior'
         {
              Interactive_logon_Smart_card_removal_behavior = 'Lock workstation'
              Name = 'Interactive_logon_Smart_card_removal_behavior'
         }

         SecurityOption 'SecurityRegistry(INF): User_Account_Control_Admin_Approval_Mode_for_the_Built_in_Administrator_account'
         {
              Name = 'User_Account_Control_Admin_Approval_Mode_for_the_Built_in_Administrator_account'
              User_Account_Control_Admin_Approval_Mode_for_the_Built_in_Administrator_account = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): Network_access_Restrict_anonymous_access_to_Named_Pipes_and_Shares'
         {
              Name = 'Network_access_Restrict_anonymous_access_to_Named_Pipes_and_Shares'
              Network_access_Restrict_anonymous_access_to_Named_Pipes_and_Shares = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): Microsoft_network_server_Digitally_sign_communications_always'
         {
              Name = 'Microsoft_network_server_Digitally_sign_communications_always'
              Microsoft_network_server_Digitally_sign_communications_always = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): Network_access_Do_not_allow_anonymous_enumeration_of_SAM_accounts_and_shares'
         {
              Network_access_Do_not_allow_anonymous_enumeration_of_SAM_accounts_and_shares = 'Enabled'
              Name = 'Network_access_Do_not_allow_anonymous_enumeration_of_SAM_accounts_and_shares'
         }

         SecurityOption 'SecurityRegistry(INF): System_objects_Strengthen_default_permissions_of_internal_system_objects_eg_Symbolic_Links'
         {
              Name = 'System_objects_Strengthen_default_permissions_of_internal_system_objects_eg_Symbolic_Links'
              System_objects_Strengthen_default_permissions_of_internal_system_objects_eg_Symbolic_Links = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): Domain_member_Disable_machine_account_password_changes'
         {
              Name = 'Domain_member_Disable_machine_account_password_changes'
              Domain_member_Disable_machine_account_password_changes = 'Disabled'
         }

         SecurityOption 'SecurityRegistry(INF): Domain_member_Digitally_sign_secure_channel_data_when_possible'
         {
              Name = 'Domain_member_Digitally_sign_secure_channel_data_when_possible'
              Domain_member_Digitally_sign_secure_channel_data_when_possible = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): Audit_Force_audit_policy_subcategory_settings_Windows_Vista_or_later_to_override_audit_policy_category_settings'
         {
              Name = 'Audit_Force_audit_policy_subcategory_settings_Windows_Vista_or_later_to_override_audit_policy_category_settings'
              Audit_Force_audit_policy_subcategory_settings_Windows_Vista_or_later_to_override_audit_policy_category_settings = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): User_Account_Control_Run_all_administrators_in_Admin_Approval_Mode'
         {
              Name = 'User_Account_Control_Run_all_administrators_in_Admin_Approval_Mode'
              User_Account_Control_Run_all_administrators_in_Admin_Approval_Mode = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): User_Account_Control_Detect_application_installations_and_prompt_for_elevation'
         {
              User_Account_Control_Detect_application_installations_and_prompt_for_elevation = 'Enabled'
              Name = 'User_Account_Control_Detect_application_installations_and_prompt_for_elevation'
         }

         SecurityOption 'SecurityRegistry(INF): Domain_member_Digitally_encrypt_secure_channel_data_when_possible'
         {
              Name = 'Domain_member_Digitally_encrypt_secure_channel_data_when_possible'
              Domain_member_Digitally_encrypt_secure_channel_data_when_possible = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): Network_security_LAN_Manager_authentication_level'
         {
              Name = 'Network_security_LAN_Manager_authentication_level'
              Network_security_LAN_Manager_authentication_level = 'Send NTLMv2 responses only. Refuse LM & NTLM'
         }

         SecurityOption 'SecurityRegistry(INF): User_Account_Control_Only_elevate_UIAccess_applications_that_are_installed_in_secure_locations'
         {
              Name = 'User_Account_Control_Only_elevate_UIAccess_applications_that_are_installed_in_secure_locations'
              User_Account_Control_Only_elevate_UIAccess_applications_that_are_installed_in_secure_locations = 'Enabled'
         }

         SecurityOption 'SecurityRegistry(INF): User_Account_Control_Behavior_of_the_elevation_prompt_for_standard_users'
         {
              Name = 'User_Account_Control_Behavior_of_the_elevation_prompt_for_standard_users'
              User_Account_Control_Behavior_of_the_elevation_prompt_for_standard_users = 'Automatically deny elevation request'
         }

         SecurityOption 'SecurityRegistry(INF): Network_security_Minimum_session_security_for_NTLM_SSP_based_including_secure_RPC_clients'
         {
              Name = 'Network_security_Minimum_session_security_for_NTLM_SSP_based_including_secure_RPC_clients'
              Network_security_Minimum_session_security_for_NTLM_SSP_based_including_secure_RPC_clients = 'Both options checked'
         }

         SecurityOption 'SecurityRegistry(INF): Microsoft_network_client_Digitally_sign_communications_always'
         {
              Microsoft_network_client_Digitally_sign_communications_always = 'Enabled'
              Name = 'Microsoft_network_client_Digitally_sign_communications_always'
         }

         SecurityOption 'SecurityRegistry(INF): Accounts_Limit_local_account_use_of_blank_passwords_to_console_logon_only'
         {
              Accounts_Limit_local_account_use_of_blank_passwords_to_console_logon_only = 'Enabled'
              Name = 'Accounts_Limit_local_account_use_of_blank_passwords_to_console_logon_only'
         }

         SecurityOption 'SecurityRegistry(INF): Network_access_Restrict_clients_allowed_to_make_remote_calls_to_SAM'
         {
              Network_access_Restrict_clients_allowed_to_make_remote_calls_to_SAM = $null
              Name = 'Network_access_Restrict_clients_allowed_to_make_remote_calls_to_SAM'
         }

         SecurityOption 'SecurityRegistry(INF): Network_security_Allow_LocalSystem_NULL_session_fallback'
         {
              Network_security_Allow_LocalSystem_NULL_session_fallback = 'Disabled'
              Name = 'Network_security_Allow_LocalSystem_NULL_session_fallback'
         }

         SecurityOption 'SecurityRegistry(INF): Microsoft_network_client_Send_unencrypted_password_to_third_party_SMB_servers'
         {
              Name = 'Microsoft_network_client_Send_unencrypted_password_to_third_party_SMB_servers'
              Microsoft_network_client_Send_unencrypted_password_to_third_party_SMB_servers = 'Disabled'
         }

         SecurityOption 'SecurityRegistry(INF): Interactive_logon_Machine_inactivity_limit'
         {
              Name = 'Interactive_logon_Machine_inactivity_limit'
              Interactive_logon_Machine_inactivity_limit = $null
         }

         SecurityOption 'SecurityRegistry(INF): Network_security_Minimum_session_security_for_NTLM_SSP_based_including_secure_RPC_servers'
         {
              Network_security_Minimum_session_security_for_NTLM_SSP_based_including_secure_RPC_servers = 'Both options checked'
              Name = 'Network_security_Minimum_session_security_for_NTLM_SSP_based_including_secure_RPC_servers'
         }

         SecurityOption 'SecurityRegistry(INF): Network_access_Do_not_allow_anonymous_enumeration_of_SAM_accounts'
         {
              Network_access_Do_not_allow_anonymous_enumeration_of_SAM_accounts = 'Enabled'
              Name = 'Network_access_Do_not_allow_anonymous_enumeration_of_SAM_accounts'
         }

         SecurityOption 'SecurityRegistry(INF): Network_security_LDAP_client_signing_requirements'
         {
              Name = 'Network_security_LDAP_client_signing_requirements'
              Network_security_LDAP_client_signing_requirements = 'Negotiate Signing'
         }

         SecurityOption 'SecurityRegistry(INF): Domain_member_Digitally_encrypt_or_sign_secure_channel_data_always'
         {
              Domain_member_Digitally_encrypt_or_sign_secure_channel_data_always = 'Enabled'
              Name = 'Domain_member_Digitally_encrypt_or_sign_secure_channel_data_always'
         }

         RefreshRegistryPolicy 'ActivateClientSideExtension'
         {
             IsSingleInstance = 'Yes'
         }
     }
}
WindowsServer2019Baseline
