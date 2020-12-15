<#
Last Updated: 12/15/2020
Author: Matt Hansen
Description: Basic installation of DNS server with forwarder set to Azure DNS servers. 
#>

##Install DNS Server
Install-WindowsFeature DNS -IncludeManagementTools

##Add Forwarder to Azure, by default this simply forwards DNS queries to Azure.
Add-DnsServerForwarder -IPAddress 168.63.129.16 -PassThru

<#
Further powershell commands for DNS: 
https://docs.microsoft.com/en-us/powershell/module/dnsserver/?view=win10-ps
#>

