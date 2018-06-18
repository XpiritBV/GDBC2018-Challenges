---
code: LZZ9YC6Q
effort: 20 
bonus: false
required: true
type: Product Backlog Item 
---
# Set up a Continuous Deployment (CD) #

## Description ##

GDBC Inc. has a CI build but still has to manually deploy their site to the various test and production environments. They have word documents that can be used as a step by step guide to do the installation, but this has proven to be very error prone. Almost every deployment goes wrong because things are missing. This results in delays or even production incidents. 

### ###

The Management team of GDBC Inc. has asked the team to improve this and the team has proposed to further automate the deployment of the software using a Continuous Deployment Pipeline. To save some costs management has asked to make use on-demand environments

## Achievement ##
In this achievement you will set up a Continuous Deployment Release pipeline. This pipeline will take the published build artifacts and release the software to a Test environment (resource group) in Azure. 

To make testing as cost efficient as possible, the test environment is provisioned the moment the deployment is started and the environment is cleaned up the moment the testing stage is done. This will prevent extra costs for compute resources that are not used.

## Acceptance criteria ##
* When a CI build is finished, the new version of the software is automatically deployed to the Test environment. This test environment is in Azure. 
**Note:** a script is provided which you can use to create a Azure Service Principal. This is needed when creating a Azure Resource Manager service endpoint that allows you to connect VSTS to Azure]
* A new environment is created automatically at the beginning of the deployment.
**Note:** a script is provided to create a resource group with a web app]
* The release pipeline contains a way to break down the environment when deployment was done.
**Note:** a script is provided to delete the resource group]

## Links ##
- [Define your CD release process](https://docs.microsoft.com/en-us/vsts/build-release/apps/cd/deploy-webdeploy-webapps?view=vsts#cd)
- [Create a service endpoint](https://docs.microsoft.com/en-us/vsts/build-release/concepts/library/service-endpoints?view=vsts#create-a-service-endpoint)
- [Enable Azure PowerShell on your environment](https://docs.microsoft.com/en-us/powershell/azure/install-azurerm-ps?view=azurermps-5.7.0)
- [Create an ASP.NET Core web app in Azure](https://docs.microsoft.com/en-us/azure/app-service/app-service-web-get-started-dotnet)
- [Friends don't let friends](https://damianbrady.com.au/2018/02/01/friends-dont-let-friends-right-click-publish/)
