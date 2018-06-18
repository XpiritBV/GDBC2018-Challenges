---
code: 7GMAE1P6
effort: 15
bonus: true
required: false
type: Product Backlog Item 
---
# Add Performance Metrics to Azure Dashboard and alert on VSTS dashboard #

## Description ##

GDBC Inc. development team has gathered a ton of metrics, but the information is scattered in different dashboards within application insights.The CTO would like to get a more high level and informative dashboard regarding the current and last 7 days performance metrics of the application to use these to monitor the application. This will be useful for everyone - the support, live site / operations and development team and of course the CTO that will most likely take nice snapshots out of them to illustrate and explain situations to management.

### Achievement ###
Create an azure dashboard that would pull together different performance metrics that are now collected regarding the application and its components and dependencies and offer high level and detailed view over those metrics. 

The dashboard should cover:
* Application components / dependencies health state
* Response times
* Availability and responsiveness information
* Users / Requests / Sessions
* Resource consumption and availability (memory, cpu, io, etc. of relevant and important resources)
 * Performance counters 
* Exceptions / sec rate

## Acceptance Criteria ##
* Created a dashboard with available and relevant metrics and views on them to provide high level and detail information
* Shared the dashboard within organization by adding metrics from Application Insights Analytics to VSTS dashboard

## Links ##
* [Azure AI Dashboards](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-dashboards)
* [Live Metrics Stream](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-live-stream)
* [Azure Application Insights Widgets](https://marketplace.visualstudio.com/items?itemName=ms-appinsights.ApplicationInsightsWidgets)
