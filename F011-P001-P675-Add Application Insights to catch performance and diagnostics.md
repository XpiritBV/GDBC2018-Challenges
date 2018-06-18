---
code: T5QFCD73
effort: 20
bonus: false
required: true 
type: Product Backlog Item 
---
# Add Application Insights to catch performance and diagnostics #

## Description ##

The GDBC Inc. development team has trouble figuring out what is going wrong with the application and especially be proactive about this. The information regarding all the different application components and dependencies would be super helpful in these scenarios since there's hardly any exceptions until things go horribly bad. The Development team is quite sure that if they would have telemetry around resource utilization, communication between components and memory usage, they might be able to mitigate these issues much faster. 

### Achievement ###
In this achievement you are going to use Application Insights throughout all application components and layers by integrating it through the code. By using the necessary NuGet packages within the application the telemetry can be send to Application Insights.

## Acceptance Criteria ##
* Web application Live Metrics can be viewed from the Azure Portal
* CPU and Memory can be viewed from the Azure Portal
* Diagnostics and Exceptions show up in the Azure Portal
* Use Application Insights Snapshot Debugger to analyse application run-time state

## Links ##
* [Quickstart - Start monitoring asp.net web app](https://docs.microsoft.com/en-us/azure/application-insights/quick-monitor-portal)
* [Set up app insights for asp.net website](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-asp-net)
* [Collect more telemetry](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-asp-net-more)
* [System performance counters in Application Insights](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-performance-counters)
* [App Insights - transaction diagnostics](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-transaction-diagnostics)
* [App Insights Live Metrics](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-live-stream)
* [Set Alerts in Application Insights](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-alerts)
* [Smart Detection in Application Insights](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-diagnostics)
* [Debug snapshots on exceptions in .NET apps](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-snapshot-debugger)
* [Snapshot Debugger: Troubleshooting Guide](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-troubleshoot-snapshot-debugger)
