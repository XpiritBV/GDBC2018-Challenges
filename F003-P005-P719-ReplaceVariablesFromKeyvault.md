---
code: KCURS6C7 
effort: 10
bonus: true
required: false
type: Product Backlog Item 
---
# Use keyvault secrets in your pipeline #

## Description ##
To ensure no secrets end up in Source Control or in plain text, a keyvault is used. Sensitive data that is required for deployment must be inserted in the scripts at deployment time.

## Achievement ##
In this achievement, you will link your keyvault secrets to the pipeline and use the secrets within your scripts. The secrets variables should be replaced with the password you created in keyvault. Therefore we will create a variable group that reads this secret from the keyvault and exposes this to the pipeline. In the pipeline we will replace the sql.adminpassword with the real value

## Acceptance Criteria ##
* A variable group is created for all environments which is linked to the keyvaults of the same environments
* Replace the variables with variables from keyvault

## Links ##
- [Deploy: Azure Key Vault](https://docs.microsoft.com/en-us/vsts/build-release/tasks/deploy/azure-key-vault?view=vsts)
- [Replace tokens task](https://marketplace.visualstudio.com/items?itemName=qetza.replacetokens)
- [Variable groups for builds and releases](https://docs.microsoft.com/en-us/vsts/build-release/concepts/library/variable-groups?view=vsts)