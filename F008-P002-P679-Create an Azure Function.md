---
code: RT89ZF0W
effort: 15
bonus: false
required: true
type: Product Backlog Item 
---
# Create an Azure Function #

## Description ##


A situation occurred where there were known issues with some Azure features. The fully automated CI/CD release pipeline, still did a release. Because of this release the application crashed and things got worse. The GDBC Inc. development team want to have the possibility to "stop the line" when there are known issues. They want to address this by creating a check that returns OK or NOK before releasing to production.

### Achievement ###

In this achievement you will create an Azure function. The purpose of the function is to return status for a GO or NO GO. If the function
returns OK then all is working as expected and the deployment can continue to the next stage of the deployment.

* Create an Azure function that returns OK or NOK 
* Test your Azure function 
* (optional) Automate the deployment of the Azure function
* (optional) Automate a test for the Azure function

## Acceptance Criteria ##
* Azure function operational
* Azure function verified in for example Postman

## Links ##
* [Create your first function in the Azure portal](https://docs.microsoft.com/en-us/azure/azure-functions/functions-create-first-azure-function)
* [Create your first function using Visual Studio](https://docs.microsoft.com/en-us/azure/azure-functions/functions-create-your-first-function-visual-studio)
* [Strategies for testing your code in Azure Functions](https://docs.microsoft.com/en-us/azure/azure-functions/functions-test-a-function)
* [Automate deploying Azure Functions with VSTS](https://www.jan-v.nl/post/automate-deploying-azure-functions-with-vsts)
