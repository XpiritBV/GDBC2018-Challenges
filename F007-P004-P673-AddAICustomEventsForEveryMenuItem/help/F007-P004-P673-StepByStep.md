# Step By Step: Add Application Insights Custom Events for every Menu Item #

This Step by Step is assuming that you already have application insights setup in CH007-AC001. 

1. You can add custom event tracing of menu items in different ways - from client side or servers side. This step by step is showing how to add it through server side code. 
Add to the Index() method of classes HomeController , StoreController, StoreManagerController and ShoppingCartController the following code lines:

```powershell
var tc = new Microsoft.ApplicationInsights.TelemetryClient();
// Change the event text to match which controller index is touched. 
// e.g. this would be for StoreController Index() method.
tc.TrackEvent("Navigation.StoreIndexPage");
```
  
2. Commit the code to repository. Build and Deploy. 

3. Run the application and you should be able to see new custom events being sent to application insights regarding navigation.

4. We could now customize and send more data with the event - different metrics and measurements. More information regarding events can be found [here](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-api-custom-events-metrics#trackevent)