REM create resource group
call az group create -n 'gdbcResourceGroup' -l 'West Europe'

REM create keyvault
call az keyvault create --name 'gdbcKeyVault' --resource-group 'gdbcResourceGroup' --location 'West Europe'

REM get the application ID (AppID element) (change the SPN name)
call az ad sp list --display-name gdbc-demovenue 

REM Set Keyvault policy settings, replace your AppID
REM samle call az keyvault set-policy --name 'gdbcKeyVault' --resource-group 'gdbcResourceGroup' --secret-permissions get list --spn ba12f2d1-2c84-41d3-ba45-587b05612345 
call az keyvault set-policy --name 'gdbcKeyVault' --resource-group 'gdbcResourceGroup' --secret-permissions get list --spn <AppID>

REM Create secret
call az keyvault secret set --vault-name 'gdbcKeyVault' --name 'Admin-Password' --value 'Pa$$w0rd'

