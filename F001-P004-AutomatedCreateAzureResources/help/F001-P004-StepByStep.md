# Step By Step: Create automation scripts to create Azure resources
This step by step guide describes the steps for automatically creating a web app (with a service plan) and a database (with SQL server). This and assigning these resources to a resource group will be done by using the Azure CLI 2.0. If you want to use PowerShell, you'll need to convert all the steps to their PowerShell equivalent.

## Reading parameters
1. Open your favourite script editor and create  new script. Save it as `CreateAzureResources.cmd`

2. Add the following line to save the first script argument in a variable called `Environment_name`

   ``` bash
   set Environment_name=%1
   ```

## Creating a web application

1. Add the following lines to create a new app service plan and a new web application

   ``` bash
   call az appservice plan create -g "RG-Playground-Teamname" -n "AppServicePlan-TeamName-%Environment_name%" --sku F1
   REM create appservice plan

   REM create azurewebapp 
   call az webapp create -g "RG-Playground-Teamname" -p "AppServicePlan-TeamName-%Environment_name%" -n "WebApp-TeamName-%Environment_name%"
   ```

## Creating a SQL server
1. Add the following lines to create a new SQL server and a database

   ``` bash
   REM create SQL server
   call az sql server create --admin-password "vhniNTbo3$9hJvrx{w{rTotqmsFT7_" --admin-user "GDBCAdmin" --location "West Europe" --name "sqlserver-teamname-%Environment_name%" --resource-group "RG-Playground-Teamname"

   REM set firewall rule to allow azure resources access the database
   az sql server firewall-rule create --name "azureservices" --start-ip-address 0.0.0.0 --end-ip-address 0.0.0.0 --server "sqlserver-teamname-%Environment_name%" --resource-group "RG-Playground-Teamname"

   REM create SQL database
   call az sql db create --name  "db-teamname-%Environment_name%" --resource-group "RG-Playground-Teamname" --server "sqlserver-teamname-%Environment_name%"
   ```
   
**Note:** The location of your SQL Server depends on where you created it earlier. Change the location in this script block if needed. The server name naming rules are: Servername can only be made up of lowercase letters 'a'-'z', the numbers 0-9 and the hyphen. The hyphen may not lead or trail in the name. 


## Running the script
1. Switch back to your Azure Command Prompt. If you accidentally closed it, re-open it and login by running `az login`
2. Navigate to the directory where you saved your script by typing `cd <path where you saved your script>`
3. Run `CreateAzureResources.cmd dev`
4. Check the Azure Portal to see that your resource group has been created and the correct security group was assigned.

## Finished script
1. The finished script can be downloaded here:  [CreateAzureResources.zip](.attachments/CreateAzureResources.zip)