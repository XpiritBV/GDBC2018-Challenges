---
code: F9L88NHP
effort: 15
bonus: false
required: false
type: Product Backlog Item 
---
# Add a Release gate on app performance #

## Description ##

The last deployment resulted in a panic situation at GDBC Inc. after a few hours the site went down. A thorough root cause analysis showed that a simple code change resulted in a memory leak, which eventually brought down the site. The problem was reproducable in the test environment. 

The CTO wants that these things are checked before going to production. The Lead Architect knows how to use Azure Monitor Alerts. He wants to use the status of this monitor to decide if the release can proceed. 

### Achievement ###
In this exercise you will create an Azure alert that monitors the behaviour and performance of your application. Next you will add this insight into the release pipeline so that it can continue or halt the release process.

* Create an Azure alert
* Add deployment gate that uses this alert
* Run a new release and validate that the Azure alert is called

## Acceptance Criteria ##
* Azure Alert created 
* Azure Alert added to deployment gate
* Completed release that continued deployment based on the gate

## Links ##
* [Explore the Alerts experience in Azure Monitor](https://docs.microsoft.com/en-us/azure/monitoring-and-diagnostics/monitoring-overview-unified-alerts)
* [VSTS Release Gates](https://docs.microsoft.com/en-us/vsts/build-release/concepts/definitions/release/approvals/gates)