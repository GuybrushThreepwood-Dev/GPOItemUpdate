### This script will create a registry item for the GPO specificed in the $GPOName variable
### -Context can be changed depending on whether this is "user" or "computer" configuring GPO
### -Action sets whether the key will be an Update, Create, Replace, or Delete item
### -Type sets whether the item is a string, DWord, ExpandString, Binary, MultiString, ExpandString, or QWord
### If creating multiple entries in the same GPO, then additional lines can be created

$GPOName = "GPOName"

Set-GPPrefRegistryValue -Name $GPOName -Context User -Action Update -Key "HKCU\software\policies\microsoft\office\16.0\clip organizer" -Valuename "RegItemName" -Value 1 -Type DWord
