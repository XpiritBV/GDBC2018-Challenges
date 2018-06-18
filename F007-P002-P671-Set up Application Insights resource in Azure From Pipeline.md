---
code: XXTW81KZ
effort: 20
bonus: false
required: false
type: Product Backlog Item 
---
# Set up Application Insights resource in Azure From Pipeline #

## Description ##

Deploying your infrastructure as code in source control, written and runnable in repeatable and desired state manner guarantees that the all environments created are consistently the same, they can always be recreated, would allow validation that the current state of the environment is according to the definition and if its not, the Azure Resource Manager would know what to amend and how to make it so.

All resources part of the infrastructure should be deployed in the same manner and Application Insights is merely another azure resource to be deployed. 

Since GDBC Inc. wants to use application insights to collect data to understand how their application is being used by users, it is important to configure the application insights usage analytics within the application to send information to the newly deployed azure resource

The goal is to:
* Have one place where infrastructure is described
* Have one way of deploying infrastructure changes to all environments 
* Be able to validate that the infrastructure matches the desired state
* To be able to collect usage analytics to the new application insights resource

### Achievement ###
GDBC Inc development team already has automation (scripts/ARM template) to create the infrastructure in Azure. Application Insights is a new Azure resource that should be included in the automation so it also gets deployed in the same way. In this achievement you will:
* Change the automation and add the application insight resource to it
* Deploy the new resource using the changed template through the pipeline
* Add usage analytics to pages and configure correct instrumentation key into the application from pipeline

## Acceptance Criteria ##
* Automation that can deploy application insights resource that is configured to be used by the application 
* Completed release that has deployed application insights resource to one environment

## Links ##
* [Application Insights Documentation](https://docs.microsoft.com/en-us/azure/application-insights/)
* [Azure QuickStart templates on GitHub](https://github.com/Azure/azure-quickstart-templates)
* [Create Application Insights resources using PowerShell](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-powershell)

