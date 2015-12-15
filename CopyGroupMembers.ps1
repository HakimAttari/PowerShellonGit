####################################################################
# PS Script to copy members of a Group to another Group. 
# Version 1.1 Nov 2015
# Kata
# Systems Engineer
# Requires: Windows PowerShell Module for Active Directory
#######################################################################

$Source_Group = "CN=A10_MixLine_SetPoint,OU='Active Directory Security Groups',DC=kdd_ntdomain,DC=com" 
$Destination_Group = "CN=A09_MilkReception_SetPoint,OU=Industrial,DC=kdd_ntdomain,DC=com" 
 
$Target = Get-ADGroupMember -Identity $Source_Group 
foreach ($Person in $Target) { 
    Add-ADGroupMember -Identity $Destination_Group -Members $Person.distinguishedname 
}