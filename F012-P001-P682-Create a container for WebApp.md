---
code: RLUIVMXP
effort: 15
bonus: false
required: false
type: Product Backlog Item 
---
# Create a container for WebApp #

## Description ##

By containerizing the web application, developers will be able to develop and run the application locally in a production-like environment, without having to install anything else than Docker for Windows on their local machine. It will also improve the application delivery since the same image will be used throughout all environments, including the production environment.


### Achievement ###
In this challenge you will add Docker support to the existing web application and verify that you can debug and run the application locally inside a container.

**Note:** The web application will not be fully functional yet. If you see the yellow screen of death running in your container, then the mission of this challenge is still accomplished, since we will add the SQL Server in a subsequent challenge.

## Acceptance Criteria ##
* Docker support added, with a docker compose project and a Dockerfile for the web project
* When the project is started, the web application should be running inside a Docker container

## Links ##
* [Create your first Docker container with an ASP.NET web app](https://tutorials.visualstudio.com/aspnet-container/containerize)
