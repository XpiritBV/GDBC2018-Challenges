---
code: 745TTCXB
effort: 20
bonus: false
required: false
type: Product Backlog Item 
---
# Create a keyvault in your resource groups #

## Description ##
When deploying your software, you most probably have to use some secrets here and there. Think of connection string password, username, and passwords for functional users or SQL users. VSTS has the possibility to store your secrets but once saved this can never be retrieved again. Keyvault has this possibility.

## Achievement ##
In this achievement, we will create a keyvault in all resource groups and store a secret in this keyvault that keeps a password. In this case a SQL user password. Of course, we will do this in an automated fashion. Our team security group and VSTS Service Principal will get access to this keyvault.

## Acceptance Criteria ##
* Keyvault created in all resource groups
* Service Principal has Get, List permissions on all keyvaults
* Security group has Get, List permissions on Test
* Security group has List permissions on Production
* Random string added as secret in all keyvault with the name [admin-password]
* Release Pipeline uses variable group linked to Keyvault

## Links ##
- [az keyvault](https://docs.microsoft.com/en-us/cli/azure/keyvault?view=azure-cli-latest)
- [Get started with Azure Key Vault](https://docs.microsoft.com/en-us/azure/key-vault/key-vault-get-started)
