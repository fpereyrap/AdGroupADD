# Add User to a Group - PowerShell Script for Multi Domain AD's
#
Import-module ActiveDirectory 
Import-CSV "Users.csv" | % { 
$forestServer = $_.Domain + "ADD HERE FQDN"
$forestUser = Get-ADUser $_.UserName -Server $forestServer
Add-ADGroupMember -Identity $_.Group -Members $forestUser 
} 
