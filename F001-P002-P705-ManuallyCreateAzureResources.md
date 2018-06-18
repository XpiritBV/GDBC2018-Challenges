---
code: 34NIY00O
effort: 10
bonus: false
required: true
type: Product Backlog Item 
---

# Add Azure Web App and SQL Server to the resource group #

## Description ##

You need to deploy resources to the resource group to make it useful. The resource group is the container where resources can be created that in a sense belong together. The proof of concept that GDBC Inc. wants to create consists of a Web Application and a Database. 

### Achievement ###
In the Azure portal you will create a new Azure Web App with a simple App Service Plan. You will also create an Azure SQL Server that can later be used to contain the data of your Web application.
### ###
Using the Azure Portal  you can connect to the SQL Database to create a table and add some data. Create a table called TestArtist containing an ID and names of artists. Attached you will find a script called create-artists.sql.

## Acceptance criteria ##
* When you browse to the Azure website, you will see the welcome screen of web apps where they explain how to deploy applications
* A SQL Database has been created containing 1 table TestArtist

## Links ##
- [Manage an App Service plan in Azure](https://docs.microsoft.com/en-us/azure/app-service/app-service-plan-manage)
- [Create an Azure SQL database in the Azure portal](https://docs.microsoft.com/nl-nl/azure/sql-database/sql-database-get-started-portal)
- [Azure portal: Use the SQL Query editor to connect and query data](https://docs.microsoft.com/en-us/azure/sql-database/sql-database-connect-query-portal)
- [Publish your Hello World application with Visual Studio 2017](https://docs.microsoft.com/en-us/dotnet/core/tutorials/publishing-with-visual-studio)