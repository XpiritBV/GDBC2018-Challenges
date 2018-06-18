# Step By Step: Add App Insights to your WebApp #

1. Navigate to your [Azure Portal](http://portal.azure.com) and to the resource group containing the web app

1. Click _Add_ resource

   ![image.png](.attachments/image-abcca1d6-77ae-4394-9338-c04de6ed25a4.png)

1. To Filter type _Application Insights_, select _Application Insights_ and Click _Create_ 

   ![image.png](.attachments/image-d3be814f-c199-4f82-9011-93aa444204e0.png)

1. Enter name for the resource (e.g. the sample uses weu-gdbc-web-appinsights), make sure _Application Type = ASP .NET Web Application_ and the rest of the values should default correctly when you started in the correct resource group. Click _Create_.

   ![image.png](.attachments/image-a1369cde-bb80-4920-b983-29ca07663805.png)

1. Once the new resource has been created, navigate to it

   ![image.png](.attachments/image-837d1fda-77f0-4b54-a054-82499621a3d8.png)

1. Generate the client site javascript code to add to your web application to start tracing usage analytics

   ![image.png](.attachments/image-639595a5-1968-458d-9054-1403bae005c6.png)

1. Change your Shared\\_Layout.cshtml to include the application insights javascript code in it

**Note:** You can do this in web or locally

   ![image.png](.attachments/image-0767a362-0f0e-4129-879d-8906dec66ee5.png)

1. In the Visual Studio Quick Launch (CRTL+Q) search for the Add Appication Insights Telemetry 

    ![image.png](.attachments\SearchForApplicationInsights.png)

1. Make sure you are using the latest Application Insights SDK to get the best experience and then press *Get Started*

   ![image.png](.attachments/image-a1369cde-bb80-4920-b983-29ca07663899.png )

1. Install the SDK and Register the existing application insights resource with the application

   ![image.png](.attachments/image-a1369cde-bb80-4920-b983-29ca07663810.png)

1. Commit the changes to repository.

1. Deploy your application with changed code and you should see usage information starting to come up in application insights telemetry when you navigate and use the website. Keep in mind it may take a few minutes.