SET Environment_name=%1

REM create appservice plan
call az appservice plan create -g "RG-Playground-Teamname" -n "AppServicePlan-TeamName-%Environment_name%" --sku F1

REM create azurewebapp 
call az webapp create -g "RG-Playground-Teamname" -p "AppServicePlan-TeamName-%Environment_name%" -n "WebApp-TeamName-%Environment_name%"

REM create SQL server
call az sql server create --admin-password "vhniNTbo3$9hJvrx{w{rTotqmsFT7_" --admin-user "GDBCAdmin" --location "West Europe" --name "sqlserver-teamname-%Environment_name%" --resource-group "RG-Playground-Teamname"

REM set firewall rule to allow azure resources access the database
az sql server firewall-rule create --name "azureservices" --start-ip-address 0.0.0.0 --end-ip-address 0.0.0.0 --server "sqlserver-teamname-%Environment_name%" --resource-group "RG-Playground-Teamname"

REM create SQL database
call az sql db create --name  "db-teamname-%Environment_name%" --resource-group "RG-Playground-Teamname" --server "sqlserver-teamname-%Environment_name%"
