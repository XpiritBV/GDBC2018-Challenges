---
code: 25IBATYF
effort: 10
bonus: false
required: true 
type: Product Backlog Item 
---
# Set up Azure Container Registry #

## Description ##

When working with Docker containers, the artefacts that are produced are Docker images, that contains the application as well as everything needed to run that application, including the base OS. These images need to be published to a container registry, from which they can be pulled from different target environments and started as containers.

### Achievement ###
In this challenge you will create an Azure Container Registry that you can use later on to publish the images of the application

## Acceptance Criteria ##
* A generated Azure Container Registry visible in the Azure portal

## Links ##
* [Create a container registry using the Azure portal](https://docs.microsoft.com/en-us/azure/container-registry/container-registry-get-started-portal)
