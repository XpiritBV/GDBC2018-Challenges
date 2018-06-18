# Step By Step: Create Feature Toggle SwitchPage #

1. Add a feature toggle administration page to the application. The required files are attached to the workitem. Save and placce the files in the correct location in the MVC MusicStore solution. Make sure to include the files into the solution as well, use the show hidden files toggle in the solution explorer to find them.
	
```bash
Models
    FeatureToggle.cs
Views
    FeatureToggles
        Create.cshtml
        Delete.cshtml
        Details.cshtml
        Edit.cshtml
        Index.cshtml
Controllers
    FeatureTogglesController.cs
```

2. Add a menu item that refers to the feature toggles administration page. Add this item the menu list in the Views\Shared\\_Layout.cshtml file:

```cs 
<li>@Html.ActionLink("Admin", "Index" "FeatureToggles")</li>
``` 

**Note:** Normally this page would be authorized, but for demonstration purposes this is omitted.

3. Add a get set property for the feature toggles by adding this property the MusicStoreEntities.cs file:

```cs 
public DbSet<FeatureToggle> FeatureToggles { get; set; }
``` 

4. Open SQL Management Studio and connect to the SQL server that you created. [SERVER_INSTANCE_NAME].database.windows.net. 
5. Select the MusicStore database and run the file `Create_FeatureToggles_Table.sql` to create the table

6. Run the application and click on the admin menu item. 

7. Click new to configure a new feature toggle. Enter the name: SalesCampaignFeatureToggle and check the enabled checkbox. Click create to save the values in the database.

8. Change the class name that the SalesCampaignFeatureToggle class inherits from to SqlFeatureToggle like this:

```cs
public class SalesCampaignFeatureToggle : SqlFeatureToggle
```

9. Change the feature toggle configuration by replacing the existing feature toggle config with:

```xml
<add key="FeatureToggle.SalesCampaignFeatureToggle.ConnectionStringName" value="MusicStoreEntities" />
<add key="FeatureToggle.SalesCampaignFeatureToggle.SqlStatement" value="select Enabled from FeatureToggles where Name = 'SalesCampaignFeatureToggle'" />
```

10. Test if switching on and off through the admin page effects the application by running the application and changing the feature toggle value through the administration page.