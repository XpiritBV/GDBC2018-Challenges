---
code: 4Q3DHAPP
effort: 10
bonus: false
required: false 
type: Product Backlog Item 
---
# Update your pipeline to swap slots when ready #

## Description ##

When a system can be deployed to an Azure app service deployment slot it's natural to integrate that with the release management
system so that the system first is deployed to a staging environment. The deployment can then be tested in that environment and
when it is confirmed to be working the staged environment can be swapped with current production version so that the stage 
becomes the production system.

### Achievement ###
In this achievement you will integrate the swapping of Azure web apps from a staged environment (slot) to the production version.

* Add a release phase that swaps the staged environment with the live version
* Add an approval step that waits for the staged environment to be validated before it is swapped to production

## Acceptance Criteria ##
* A release has been run that first deploys to the staged environment, then waits for approval and then swaps the stage to production

## Links ##
* [Azure App Service Management](https://go.microsoft.com/fwlink/?linkid=831573)
