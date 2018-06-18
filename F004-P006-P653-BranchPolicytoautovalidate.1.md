---
code: GT8OCW51
effort: 10
bonus: true
required: false
type: Product Backlog Item 
---
# Set the branch policy to automatically validate the pull request with the new build #

## Description ##
In order to save time on validation of pull requests we want the pre-checks if the code builds and passes the tests to be done before the pull request is reviewed. Therefore we want VSTS to schedule a build the moment the pull request is filed in the system.

### Achievement ###
Set the branch policy to automatically run the builds

## Acceptance Criteria ##
* The build is triggered immediatly when a pull request is created.

## Links ##
* [Pull requests](https://docs.microsoft.com/en-us/vsts/git/pull-requests-overview?view=vsts)
* [Create a pull requests](https://docs.microsoft.com/en-us/vsts/git/tutorial/pullrequest?view=vsts)
