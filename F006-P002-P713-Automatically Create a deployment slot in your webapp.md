---
code: 0EPLD9LA
effort: 15
bonus: true
required: false
type: Product Backlog Item 
---
# Automatically create a deployment slot in your web app and deploy to this #

## Description ##

The manual creation of Deployment slots stresses some of the developers. They don't want to forget this important stuff. In order to make this part of the release process, the creation of deployment slots needs to be automated. 

### Achievement ###
In this challenge you will add a script to automatically create deployment slots to your web application

## Acceptance Criteria ##
* Web app has deployment slots
* A release has been run that deploys to the deployment slot
* The web app has been tested from the deployment slot
* The deployment slot is created as part of the release pipeline 

## Links ##
* [Set up staging environments in Azure App Service](https://docs.microsoft.com/en-us/azure/app-service/web-sites-staged-publishing)
* [Azure AZ web app deployment slot CLI](https://docs.microsoft.com/en-us/cli/azure/webapp/deployment/slot?view=azure-cli-latest)
* [VSTS Azure AppService Deployment task](https://aka.ms/azurermwebdeployreadme)