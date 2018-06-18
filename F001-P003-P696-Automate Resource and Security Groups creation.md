---
code: XU9BQNU0
effort: 15
bonus: false
required: false
type: Product Backlog Item 
---

# Automate Resource group creation and Security Groups assignment #

## Description ##

The development team experimented with the manual creation of Resource Groups, but soon found that the manual steps are not the way to go. Everybody needs to be able to create a resource group and this need to be a predictable and reliable process. With the true DevOps Mindset they want to start automating everything. 

### Achievement ###
In this achievement you will create an automation script to automatically create Resource Groups. You will also grant your security group the needed permissions to these groups. This should be done in an automated fashion (Azure CLI / Powershell or...) To get you familiar with Azure and the concept of Resource Groups / Security and Access you need to do the following things.
### ###
* Create an automation script to create a resource group for your team
    * RG-Playground-Teamname
* Create an automation script to add your AAD Security group to the resource groups
    * Security group (Teamname) - Contributor

## Acceptance Criteria ##
* 1 resource groups is created in an automated fashion
* Security Group (Teamname) has Contributor access on the Resource Group. This has been granted in an automated fashion
* Users in the security group should be able to access the Resource Group and be able to create resources (e.g. a Web App)

## Links ##
### Using Azure CLI ###
- [Use the Azure CLI to manage Azure resources and resource groups](https://docs.microsoft.com/en-us/azure/azure-resource-manager/xplat-cli-azure-resource-manager#create-a-resource-group)
- [Manage Role-Based Access Control with the Azure command-line interface](https://docs.microsoft.com/en-us/azure/role-based-access-control/role-assignments-cli#create-role-assignments)

### Using PowerShell ###
- [Manage resources with Azure PowerShell](https://docs.microsoft.com/en-us/azure/azure-resource-manager/powershell-azure-resource-manager)
- [New-AzureRmResourceGroup](https://docs.microsoft.com/en-us/powershell/module/azurerm.resources/new-azurermresourcegroup?view=azurermps-5.7.0)
- [Manage role-based access control with Azure PowerShell](https://docs.microsoft.com/en-us/azure/role-based-access-control/role-assignments-powershell)