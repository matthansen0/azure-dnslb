

# Create 2 Virtual Machines behind an internal load balancer for DNS. 

## ARM Template

[![Deploy To Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FMattHansen0%2Fazure-dnslb%2Fmaster%2Fazuredeploy.json)  [![Visualize](http://armviz.io/visualizebutton.png)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FMattHansen0%2Fazure-dnslb%2Fmaster%2Fazuredeploy.json)

This template will create two Virtual Machines behind an internal Load Balancer using TCP 53 as a health probe.

This template also deploys a Storage Account, Virtual Network, Availability Set and Network Interfaces.

The Azure Load Balancer is assigned a static IP in the Virtual Network and is configured to load balance UDP/TCP on port 53.


## Azure Powershell 

The Powershell for this deployment has not yet been completed, feel free to submit a PR!



