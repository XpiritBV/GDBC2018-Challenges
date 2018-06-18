---
code: OB9OG2DI
effort: 15
bonus: false
required: true 
type: Product Backlog Item 
---
# Set up a SQL Server container #

## Description ##

Getting the database in a correct state, with the right version of the schema and the necessary metadata is something that many teams struggle with. Containers can help out a lot here, by packaging the necessary version of the SQL server and 

### Achievement ###
In this challenge you will add a SQL Server container to the solution, making it easy to develop locally against the correct version of the SQL Server.

## Acceptance Criteria ##
* When the application is started, there should be two containers running. One with the web application, the other one with SQL Server
* The application should be working, running against the database in the other container
* Successfully connect to the running instance of SQL Server inside the container using SQL Management studio

## Links ##
* [Official Microsoft SQL Server Developer Edition images for Windows Containers](https://hub.docker.com/r/microsoft/mssql-server-windows-developer/)
* [Override classic ASP.NET web.config Configuration Settings When Using (Docker) Containers](https://fluentbytes.com/override-classic-asp-net-web-config-configuration-settings-when-using-docker-containers/)
