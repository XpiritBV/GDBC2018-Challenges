---
code: J4JMNKVC
effort: 15
bonus: false
required: true
type: Product Backlog Item 
---

# Create automation scripts to create Azure resources #

## Description ##

The team created the required Azure resources to publish their website. But they want to create more environments that are exactly the same so they can use this for testing purposes. One of the benefits of the cloud is they can create new resources fast and discard them when not needed anymore. The team wants to be able to run an automation script that can create the previously created resources (resource group, Web application, SQL server)

### Achievement ###
In this achievement you will create a Web App and SQL Database in a fully automated fashion. The deployment of the web application is still done from Visual Studio, but at least the creation of the required resources are done automatically. Create a new resource group or use the existing resource groups from previous challenges. 

## Acceptance criteria ##
* A script that can be run from the commandline that creates a Web Application and SQL Server 
**Note:** you should choose a complex password for the SQL Server admin password otherwise it fails setting the password without specific reason
* The Resources are named uniquely based on a provided parameter in the script "Environment_name". For example when running the script with the parameter "Dev", the Web App is called WebApp-TeamName-Dev.
* After running the script the resources are available in Azure
* The SQL Server firewall settings allows access to Azure services 

## Links ##

### Using Azure CLI ###
- [az appservice plan](https://docs.microsoft.com/en-us/cli/azure/appservice/plan?view=azure-cli-latest)
- [az webapp](https://docs.microsoft.com/en-us/cli/azure/webapp?view=azure-cli-latest)

### Using Azure PowerShell ###
- [New-AzureRmAppServicePlan](https://docs.microsoft.com/en-us/powershell/module/azurerm.websites/new-azurermappserviceplan?view=azurermps-5.7.0)
- [New-AzureRmWebApp](https://docs.microsoft.com/en-us/powershell/module/azurerm.websites/new-azurermwebapp?view=azurermps-5.7.0)
