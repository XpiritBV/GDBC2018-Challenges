---
code: T1Q0GRH0
effort: 15
bonus: false
required: true 
type: Product Backlog Item 
---
# Use secrets in your pipeline #

## Description ###
To ensure no secrets end up in Source Control or in plain text, secret variables or a keyvault can be used. Sensitive data that is required for deployment must be inserted in the scripts at deployment time. 

## Achievement ##
In this achievement, you will create secret release variables and use the secrets within your scripts. You will run a SQL Script that creates a SQL user and assign it to a role, using the password configured in the pipeline.
### ###
We can use a dedicated build task to replace a variable in a script. For example, the text #password# will be automatically replaced with a release variable [password].

## Acceptance Criteria ##
* A SQL Script that creates a SQL user and assigns the user the db_datareader role
* Script should contain tokens for secrets
* Replacement of secrets with pipeline variables 
* Optional; Execution of SQL Script against the created database
 
## Links ##
* [Azure SQL Execute Query task](https://marketplace.visualstudio.com/items?itemName=geeklearningio.gl-vsts-tasks-azure&targetId=6b2bf7bd-efaa-4180-bfb6-507d37b53ce1&utm_source=vstsproduct&utm_medium=ExtHubManageList)
* [Replace tokens task](https://marketplace.visualstudio.com/items?itemName=qetza.replacetokens)
* [Using Tokens in your VSTS Pipeline](http://www.peterrombouts.nl/index.php/2017/04/04/using-tokens-for-custom-settings-in-vsts-cicd-pipelines/)
* [Default and custom release variables and debugging](https://docs.microsoft.com/en-us/vsts/build-release/concepts/definitions/release/variables?view=vsts&tabs=batch)