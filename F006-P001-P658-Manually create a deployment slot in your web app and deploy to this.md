---
code: R7YZ0QQU
effort: 10
bonus: false
required: true
type: Product Backlog Item 
---
# Manually create a deployment slot in your web app and deploy to this #

## Description ##

In order to improve the release quality and reduce downtime the team wants to move to deployment slots. The slots help to improve quality by allowing to test the release in a staged environment before it goes into production. When the system is released to production, downtime is reduced by simply swapping the current production environment with the staged environment.

### Achievement ###
In this challenge you will add deployment slots to the infrastructure to improve the release process.

* Upgrade the app service hosting plan to a tier that supports deployment slots Minimal type "Production S1"
* Add a deployment slot to the web app
* Change the release pipeline to deploy to a slot

## Acceptance Criteria ##
* Web app has deployment slots
* A release has been run that deploys to the deployment slot
* The web app has been tested from the deployment slot

## Links ##
* [Scale up an app in Azure](https://docs.microsoft.com/en-us/azure/app-service/web-sites-scale)
* [Set up staging environments in Azure App Service](https://docs.microsoft.com/en-us/azure/app-service/web-sites-staged-publishing)
* [Azure App Service Management](https://github.com/Microsoft/vsts-tasks/tree/master/Tasks/AzureAppServiceManage)