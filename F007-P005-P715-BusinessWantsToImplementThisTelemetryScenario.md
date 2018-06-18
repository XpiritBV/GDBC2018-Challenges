---
code: CBX7UH9W
effort: 25
bonus: false
required: false
type: Product Backlog Item 
---
# Add telemetry to measure customer behavior on deleting items in shopping basket  #

## Description ##

GDBC Inc marketing team is constantly striving to improve conversion. the team would like to know if there is a correlation between the fact that people are deleting items from the shopping basket and the total amount of goods they have in the basket. 

### Achievement ###
Therefore they need telemetry data when a user deletes an item from the basket. The moment a customer deletes an item, they want to track the following information:
* Name of the album
* Name of the Artist
* Genre of the album
* Total Amount of the shopping basket

Since the amount in the basket can vary a lot, they want that to be bucketed into the following buckets:
* < 100 $
* between 100 and 200 $
* between 200 and 500 $
* over 500 $

The marketing team would like to see the data gathered in a graph and table so they can try to draw conclusions out of the data.

In order to get the data, you need to add some C# code to the shopping basket controller. The moment the delete method is called you need to log the additional data using the app insights c# SDK

> Using the help function will provide guidance on using Application Insights Analytics, yes this comes at a price!

## Acceptance Criteria ##
* On the app insights dashboard there is a graph that shows the genre and amount bucket of deleted records
* On the app insights dashboard there is a table that shows the top 5 genres that get deleted


## Links ##
* [Application Insights Usages overview](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-usage-overview)
* [Application Insights API for custom events and metrics](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-api-custom-events-metrics#trackevent)
* [Analytics in Application](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-analytics)
