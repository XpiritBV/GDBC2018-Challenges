---
code: ZEM3B47P
effort: 25
bonus: false
required: false
type: Product Backlog Item 
---
# Set up separate Playground Test and Production resource groups #

## Description ##
GDBC Inc. experienced an outage last week, because someone in the team made a mistake with cleaning up resources in Azure. Instead of cleaning the test environment resources, by accident, the production resources got deleted. Luckily the automation scripts and CI/CD pipelines were there to redeploy quite easily, but still, the outage took over one-hour to overcome.
### ###
GDBC Inc. management wants to get more assurance that this can not happen again and appropriate measures are taken.
### ###
The team decided to split the various environments also in Azure. For this they want to create separate resource groups and provide access to only the service principal, so creation and clean-up are part of the deployment pipelines. This removes any manual intervention and hence makes the deployments more stable and reliable.

## Achievement ##
In this achievement, you will set up a Playground, Test and Production Resource group according to the design (see feature). 

On the production resource group, everybody is only allowed Reader access. One dedicated Service Principal is created to deploy to all the resource groups

## Acceptance criteria ##
* There is an automated script to create the 3 resource groups
* One service principal is created that can be used to deploy to all Azure Resource Groups (that the team owns) 
* Scripts are committed to the Git Repository so it can be used by the automated deployment pipelines.

## Links ##
- [Creating and deploying Azure resource groups through Visual Studio](https://docs.microsoft.com/en-us/azure/azure-resource-manager/vs-azure-tools-resource-groups-deployment-projects-create-deploy)
- [az group](https://docs.microsoft.com/en-us/cli/azure/group?view=azure-cli-latest)
- [New-AzureRmResourceGroup](https://docs.microsoft.com/en-us/powershell/module/azurerm.resources/new-azurermresourcegroup?view=azurermps-5.7.0)
- [Create Service Principal with AZ Cli](https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli?view=azure-cli-latest)
- [Create Service Principal with Powershell](https://docs.microsoft.com/en-us/powershell/azure/create-azure-service-principal-azureps?view=azurermps-5.7.0)