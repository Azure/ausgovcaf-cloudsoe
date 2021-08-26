# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

Configuration WindowsLogonBanner
{
    param
    (
        [String]
        $BannerTitle,

        [String]
        $BannerText
    )

    Import-DscResource -ModuleName 'SecurityPolicyDsc'

    Node localhost {
        SecurityOption 'Ensure Windows logon banner title is set correctly'
        {
            Name = "Banner Title"
            Interactive_logon_Message_title_for_users_attempting_to_log_on = $BannerTitle
        }

        SecurityOption 'Ensure Windows logon banner text is set correctly'
        {
            Name = "Banner Text"
            Interactive_logon_Message_text_for_users_attempting_to_log_on = $BannerText
        }
    }
}

WindowsLogonBanner -BannerTitle "title" -BannerText "text"

