---
code: J677O2SM
effort: 15
bonus: false
required: false
type: Product Backlog Item 
---
# Publish "development" Container to ACR from pipeline #

## Description ##

Even if we are not running the application using containers in production, they can still provide a lot of value for the development workflow. We can for example publish development images of the application that developers can pull and run on their local machine, without having to compile and configure them.

### Achievement ###
In this challenge you publish container images that you have built locally to the Azure Container Registry that you created previously

## Acceptance Criteria ##
* At least one container image that has been pushed to the container registry

## Links ##
* [Push your first image to a private Docker container registry using the Docker CLI](https://docs.microsoft.com/en-us/azure/container-registry/container-registry-get-started-docker-cli/)
