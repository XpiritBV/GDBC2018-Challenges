---
code: TPEI9RZI
effort: 15
bonus: false
required: true 
type: Product Backlog Item 
---
# Create Prefilled Data in SQL Server container #

## Description ##

Creating a database with prefilled data by running migrations scripts with data can be time consuming, especially if we want to use it as a basis for automated unit testing. Having a prebuild container image with SQL Server and a database with all necessary data available for developers and testers can improve the overall delivery process.

### Achievement ###
In this challenge you will use the running SQL container from the previous exercise as the basis for a new image. In the next challenge, you will push this image to ACR, together with the application image. You will also change the application so that is does not create a database when starting up.

## Acceptance Criteria ##
* A container image with the MusicStore database
* MvcMusic store application should use this image instead of the default SQL Server image

## Links ##
* [Committing Docker images](https://docs.docker.com/engine/reference/commandline/commit/)
