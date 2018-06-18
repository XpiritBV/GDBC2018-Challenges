---
code: 6K0EDAQE
effort: 10
bonus: false
required: true
type: Product Backlog Item 
---
# Manually Set up Resource Groups for initial deployment of the web application #

## Description ##

GDBC Inc. wants to move to the cloud. Their data center requires a significant upgrade and the CTO truly believes that the cloud will give GDBC Inc. the flexibility and agility they need to pick up competition. They learned there are alternatives they can use, where they don't need to invest a huge amount of capital, but just pay per use.

### ###

To get started they want to see what is possible with a simple Proof Of Concept. They just got a trial azure subscription where they now want to deploy the application to see if this is doable.

### Achievement ###
In this achievement you will use the Azure Team Admin user to create 1 resource group and assign a security group a role to this resource group. This resource group will contain the Web application in the future.

## Acceptance criteria ##
* One resource group created
    * RG-ManualDeploy-Teamname
* Security group assigned Contributor role to the Resource group
    * Security group (Teamname)
* Users in the security group should be able to access the Resource Group and be able to create resources (e.g. a Web App)

## Links ##
- [Manage Azure resources through portal](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-portal)
- [Get started with Role-Based Access Control in the Azure portal](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview)
- [Use Role-Based Access Control to manage access to your Azure subscription resources](https://docs.microsoft.com/en-us/azure/role-based-access-control/role-assignments-portal)
- [View or search for your user groups in Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-groups-view-azure-portal)
- [Manage Groups in Portal](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-groups-create-azure-portal)
- [Manage Group Members in Portal](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-groups-members-azure-portal)
