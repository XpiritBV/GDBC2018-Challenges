REM create resource group
call az group create --name "xjg-rg-sampleapp" --location "West Europe"

REM create appservice plan
call az appservice plan create -g "xjg-rg-sampleapp" -n "xjg-app-sampleapp" --sku F1

REM create azurewebapp 
call az webapp create -g "xjg-rg-sampleapp" -p "xjg-app-sampleapp" -n "xjg-webapp-sampleapp"
