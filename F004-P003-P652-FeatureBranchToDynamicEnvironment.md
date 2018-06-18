---
code: DQXIJ3PG
effort: 25
bonus: false
required: false
type: Product Backlog Item 
---
# Create a dynamic provisioned environment to validate the feature branch #

## Description ##
To thoroughly test the code on a test environment before the code gets committed to the main branch. You want to test more then only the until tests before you merge to master.

### Achievement ###
You are going to configure a release so it will also trigger on feature branches. When the release is triggered on a feature branch it will dynamically provision the required azure resources (previous automation scripts can help with this) and deploy our application using the newly provisioned resources. After the release is done, the dynamically provisioned resources must be deleted to prevent unnecessary costs. 

**Note:** Resources the provisioned resources should always be deleted even if the release fails or is cancelled else costs will stack up over time anyway!

## Acceptance Criteria ##
* When a changes are pushed to a feature branch, the release is triggered
* When the release runs, your application is deployed on a dynamically provisioned azure environment.

## Links ##
* [VSTS release management](http://https://docs.microsoft.com/en-us/vsts/build-release/concepts/releases/?view=vsts)