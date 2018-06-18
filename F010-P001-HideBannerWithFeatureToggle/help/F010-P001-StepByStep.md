# Step By Step: Hide a discount banner and sales funnel with a feature toggle #

1. Open the MVC Music Store Solution
2. Right-click on the MVC Music Store project
3. Click on Manage NuGet packages
4. Click on Browse and search for FeatureToggle package by typing FeatureToggle into the search box
5. Select the FeatureToggle package 
6. Select version 3.5.1 and click install

7. Lets define toggle class, add a new class to the Models folder of the MVC Music Store project and call it SalesCampaignFeatureToggle.cs
8. This class needs to inherit from one of the FeatureToggle base classes.
Inherit from SimpleFeatureToggle class by changing the class to

    `public class SalesCampaignFeatureToggle : SimpleFeatureToggle`

    In this case a feature toggle is used that will store it's values in the web.config file. This will require the namespace 
    
    `using FeatureToggle.Toggles;` 
    
    for your class.

10. Add a get property to the SalesCampaignFeatureToggle class.

```cs
    public class SalesCampaignFeatureToggle : SimpleFeatureToggle
    {
        // this class needs no logic
    } 
```

11. Configure the feature toggle, change the configuration for this feature toggle in the web.config file by adding a key to the app settings.<br>

```xml
 <appSettings>
    <add key="FeatureToggle.SalesCampaignFeatureToggle" value="false" />
 </appSettings>
 ```
 
12. Change application behaviour based on the feature toggle. Add logic to the view(s) (\Home\Index.cshtml) that displays the relevant content based on the feature toggle

```cs
 @if (new MvcMusicStore.Models.SalesCampaignFeatureToggle().FeatureEnabled)
    {

        <h3>SALES SALES SALES!</h3>
    }
    else
    {
        <h3><em>Fresh</em> off the grill</h3>
    } 
```

13. Test if your application view changes when you change the value of the feature toggle in de web.config file.

