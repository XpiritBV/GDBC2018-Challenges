---
code: 7584J270
effort: 30
bonus: true
required: false
type: Product Backlog Item 
---
# Configure the release pipeline to gradually roll out the application #

## Description ##

This first marketing campaign was a huge success for GDBC Inc., but the journey had some hiccups.

The goal is to:
* Get feedback early
* Limit the impact if there is an error in brand new functionality or to test if customers like newly added functionality.

### Achievement ###
In this achievement you will setup the release pipeline and the app service in such a way that new functionality is exposed
to an incrementally growing group of users. In other words your are applying the concept of a canary release.

* Deploy the web application to a deployment slot and route different percentages of traffic to this application by using the Testing In Production (TIP) feature of an App Service.
* Implement deployment rings in your release pipeline and automatically increase the percentage of users after approval has been given for each ring
* After successfully passing your approval stages swap the deployment slot and send all traffic to it

## Acceptance Criteria ##
* There are one or more rings in the release pipeline to which you the application is deployed after approval has been given.
* For each ring the amount of traffic that is directed to this ring increases.
* In the final ring all traffic is directed to the newly deployed application.

## Links ##
* [Martin Fowler on Canary Releases](https://martinfowler.com/bliki/CanaryRelease.html)
* [Marcel de Vries on A/B Testing, Canary releases and dark launching: Implementing continuous delivery on Azure (25min. video)](https://channel9.msdn.com/Events/Ignite/Microsoft-Ignite-Orlando-2017/THR2155)
* [Phased roll out with rings](https://docs.microsoft.com/en-us/vsts/articles/phase-rollout-with-rings?view=vsts)
