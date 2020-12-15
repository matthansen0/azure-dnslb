

# Create 2 Virtual Machines behind an internal load balancer for DNS. 

## ARM Template

There are many usecases for having a load balanced set of DNS servers in Azure. One of which is the primary route taken for Azure Private Link is to use IaaS DNS VMs and forward those request to an Azure Private DNS Zone. After deployment, these VMs can be configured in whichever patch management soltuion (Azure Update Management, for example) and put them on alternate reboot schedules to allow for a single IP address to continuously resolve DNS in your Azure Virtual Network. 

- This template will create two Virtual Machines behind an internal Load Balancer using TCP 53 as a health probe which listens by default on Windows DNS servers and is used for things like OPT records or DNSSEC when DNS requests are larger than 512 bytes. 

- By default the script configures a the DNS servers to forward to the multicast Azure Name Resolution but you can modify the script as you see fit. This template also deploys a Storage Account, Virtual Network, Availability Set and Network Interfaces.

- The Azure Load Balancer is assigned a static IP in the Virtual Network and is configured to load balance UDP/TCP on port 53.

<img src="./images/Azure-DNS-LB.png"/>

[![Deploy To Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FMattHansen0%2Fazure-dnslb%2Fmaster%2Fazuredeploy.json)  [![Visualize](http://armviz.io/visualizebutton.png)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FMattHansen0%2Fazure-dnslb%2Fmaster%2Fazuredeploy.json)



## Azure Powershell 

The Powershell for this deployment has not yet been completed, feel free to submit a PR!



