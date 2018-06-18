---
code: DQDD5M93
effort: 10
bonus: false 
required: false
type: Product Backlog Item 
---
# Run a smoke test as part of the deployment pipeline #

## Description ##
In the past, software got released to production where basic scenarios did not work or the website did not start at all. By adding smoke tests to the deployment pipeline, basic validation is done before moving to the next step. This will prevent releases to go to production when the basics are not working.

### Achievement ###
In this achievement you will add a smoke test to one of the early stages of the release. The smoke tests only needs to get the HTTP 200 OK response from the main pages of the website. When 200 OK is returned the test is successful. One option is to run Ping command.

## Acceptance Criteria ##
* A smoke test is added to the source repository
* The smoke test is part of the release pipeline

## Links ##
* [VSTS release management](http://https://docs.microsoft.com/en-us/vsts/build-release/concepts/releases/?view=vsts)
* [Getting started with Powershell](https://docs.microsoft.com/powershell/scripting/getting-started/getting-started-with-windows-powershell?view=powershell-6)
* [VSTS Marketplace - Smoke Web Test Task](https://marketplace.visualstudio.com/items?itemName=miguelcruz.vsts-smoke-web-test-task)