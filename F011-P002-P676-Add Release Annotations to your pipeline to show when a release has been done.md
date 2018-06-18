---
code: JYV380P0
effort: 10
bonus: false
required: false
type: Product Backlog Item 
---
# Add Release Annotations to your pipeline to show when a release has been done #

## Description ##

The GDBC Inc. development team feels pretty much on top of performance and application troubleshooting  since they know when performance issues occur and they have ways to diagnose and investigate them all because of collecting necessary telemetry regarding the running application components and dependencies. It feels pretty good to be proactive. 
Lately though some of the performance issues seem to be correlated always with releases, but no-one is quite sure. Deployments happen quite often now and its hard to know if the latest deployment could have affected the performance or not. 

Both the CTO and Product Management is eager to get some clarity if the fast and frequent deployments could be the culprit and in those cases extra performance tests and quality gates / verification should be implemented to have more stable versions of software. 

Application Insights has a feature called Release Annotations. These are markers in application insights regarding important milestones or changes that happened to resources (application components) that send telemetry. These markers are visible on performance and metrics dashboards thus allowing to correlate change in metric with an important change such as new version deployment.    

### Achievement ###
Add release annotation creation to your release pipeline so that there is a marker in application insights for every new version that gets deployed. 

## Acceptance Criteria ##
* Release annotation creation step in the pipeline
* A release has been run that has created a marker in application insights

## Links ##
* [Release Annotations](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-annotations)
