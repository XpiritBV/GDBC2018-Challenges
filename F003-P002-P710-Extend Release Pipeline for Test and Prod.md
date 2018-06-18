---
code: OY608YZQ
effort: 25
bonus: false
required: true
type: Product Backlog Item 
---
# Extend Release pipeline with new environments #

## Description ##
The outage made people aware that is better to roll out gradually before moving to production. The rollout to different environments should be embedded in the pipeline and be triggered every time a change is committed.

## Achievement ##
In this achievement, you will set up a Test and Production Stage in the Continuous Deployment Release Pipeline. The pipeline uses the Service Principals that are created as VSTS EndPoints. 

## Acceptance criteria ##
* Release Pipeline creates Azure Resources for Dev, Test and Production
* Release Pipeline contains three environments
* Each environment targets it own Azure resource group
* VSTS Endpoint is configured and used in the Release Pipeline 

## Links ##
- [Create Service Principal with AZ Cli](https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli?view=azure-cli-latest)
- [Create Service Principal with Powershell](https://docs.microsoft.com/en-us/powershell/azure/create-azure-service-principal-azureps?view=azurermps-5.7.0)
- [Create a Service EndPoint](https://docs.microsoft.com/en-us/vsts/build-release/concepts/library/service-endpoints?view=vsts)
- [Release environments, queuing policies, and options](https://docs.microsoft.com/en-us/vsts/pipelines/release/environments?view=vsts)
- [Deploy a web app to Azure App Services](https://docs.microsoft.com/en-us/vsts/pipelines/apps/cd/deploy-webdeploy-webapps?view=vsts)
 

