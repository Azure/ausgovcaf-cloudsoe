# AusGovCaf: CloudSOE - Users Guide


## Creating a new guest configuration policy

1. Create the dsc in the `cloudsoe\guest-configuration` folder
1. Github actions will compile the DSC policy
   * A zip of the script will be placed in the  `cloudsoe\guest-configuration\packages\<dsc-name>\<dsc-name>.zip` directory
   * ~~The compiled MOF will be placed in the MOF folder~~
1. Create a new folder in `cloudsoe\policies` with the name of your dsc following the `gc-dsc-name-function` structure
1. Copy a template the GC policy definition from an existing `gc-template` folder template.
1. Use Powershell to generate the SHA256 file hash for the zip for the GC policy, eg:

```powershell
Get-FileHash "C:\cloudsoe\guest-configuration\packages\<dsc-name>\<dsc-name>.zip"

Algorithm       Hash                                                                   Path
---------       ----                                                                   ----
SHA256          3X4MPL3H45H3X4MPL3H45H3X4MPL3H45H3X4MPL3H45H3X4MPL3H45H3X4MPL3H4       C:\cloudsoe\guest-configuration\Packages\<dsc-name>\<dsc-name>.zip
```

5. Edit the following sections and leave the existing structure and rest of the file

```json

"properties": {
                "displayName": "GC - Modify to something meaningful",
                "description": "Modify to a description that is meaningful",
                "metadata": {
                    "category": "Guest Configuration",
                    "guestConfiguration": {
                        "name": "<dsc-name>",
                        "contentUri": "https://govcafstorage.blob.core.windows.net/guest-configuration/<dsc-name>.zip",
                        "contentHash": "3X4MPL3H45H3X4MPL3H45H3X4MPL3H45H3X4MPL3H45H3X4MPL3H45H3X4MPL3H4",
```

* At the bottom of the policy (around line 240ish) make sure you set the condition to match the `<dsc-name>`

```json
                    "then": {
                        "effect": "auditIfNotExists",
                        "details": {
                            "type": "Microsoft.GuestConfiguration/guestConfigurationAssignments",
                            "name": "<dsc-name>",
                            "existenceCondition": {
                                "allOf": [
                                    {
                                        "field": "Microsoft.GuestConfiguration/guestConfigurationAssignments/complianceStatus",
                                        "equals": "Compliant"
                                    }
```
6. Not sure what happens now - testing?