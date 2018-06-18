
# Step By Step: Manually deploy the web application to Azure

## Locally build and run the web application
1. Clone the "GDBC-website" git repo. You can choose to do this with Visual Studio or the command line<br>
[See instructions on MSDN](https://docs.microsoft.com/en-us/vsts/git/tutorial/clone?view=vsts&tabs=command-line#clone-from-visual-studio-team-services--team-foundation-server)
2. Open the solution in Visual Studio from the location you cloned the repository to.
3. Change the web.config of the MVCMusicStore project to point to your Azure SQL Server database. Don't forget to replace TEAMNAME and ENVIRONMENT name with you actual values.

    ```xml
    <add name="MusicStoreEntities" connectionString="Data Source=sqlserver-TEAMNAME-ENVIRONMENTNAME.database.windows.net;Initial catalog=db-TEAMNAME-ENVIRONMENTNAME;user id=GDBCAdmin;password=vhniNTbo3$9hJvrx{w{rTotqmsFT7_" providerName="System.Data.SqlClient" />
    ```
    
4. Check if the SQL Server Firewall allow access.
In the Azure portal go to your SQL server (sqlserver-TEAMNAME-ENVIRONMENTNAME) and then to 'Firewalls and virtual networks'.
5. 'Allow access to Azure Access' should be on. This isn't a best practice from security perspective, but it will do for this demo purpose.
6. Also "Add client IP" to the firewall exceptions
7. Build and run the application with Visual Studio in your development environment.

## Deploy the application to Azure
1. Right click publish the application to Azure
2. Select the MVCMusicStore project, right click on it and select publish
3. In the Pick publish target dialog select "App Service" and choose for "Select existing"
4. Sign in with your provided Azure subscription credentials when asked
5. Select the resource group that you have automatically created (RG-Playground-TEAMNAME) and then select the WebApp that you have created (WebApp-TEAMNAME-ENVIRONMENTNAME)
6. Publish your app to Azure by clicking the "Publish" button

## Test
1. Test if your application is working in Azure by opening the url in a browser. The url should look like this (with your TEAMNAME and ENVIRONMENTNAME as used when created):
[https://webapp-TEAMNAME-ENVIRONMENTNAME.azurewebsites.net/](https://webapp-TEAMNAME-ENVIRONMENTNAME.azurewebsites.net/)

2. Now go to this link [Right Click Publish](https://damianbrady.com.au/2018/02/01/friends-dont-let-friends-right-click-publish/)