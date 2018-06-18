# Step By Step: Define ARM template for deployment #

**NB!** If you already have a Azure Resource Group project in your solution or ARM templates in one or another form, then customizing those based on details here would be the best approach. The description here is like it would be clean start.

1. Add a new project to your solution, of type _Azure Resource Group_, and place it under Solution Item folder, and call it e.g. _MvcMusicStore.ARM_

2. Select _Blank Template_ (skipped if you already have one)

3. The resulting project will look similar to below with 2 json files and a Deploy-AzureResourceGroup.ps1

   ![image.png](.attachments/image-57396ef8-7465-49eb-88f1-63accd1264db.png)

4. Open **azuredeploy.json** and the **JSON Outline** tool (You can open it from _View -> Other Windows -> JSON Outline_)

5. Select resources, right click and add resource. Select Application Insights.

   ![image.png](.attachments/image-48b1d0e4-5d14-445f-b4d7-2ed82712f8b8.png)

6. From the template you can see that its important to have a web app and service plan defined before creating an application insights. 
   - Create service plan (if you didn't have this) - enter name and press add.

   ![image.png](.attachments/image-0ac0eaa8-d58d-45a0-b54c-9dc08ea27705.png)
   
   - Create web app (if you didn't have this) - enter name and press add. 

   ![image.png](.attachments/image-28faa4e9-7f6a-45b8-bd95-290f32a834ac.png)

   - Create application insights - enter name and press add.
    
   ![image.png](.attachments/image-516b24da-1605-4d4d-9d2d-2db2acbeeb39.png)

   - When you execute the template, it will predefine common threshold alerts and auto scaling based on thresholds. 

   ![image.png](.attachments/image-d52575f7-7d7b-43ae-a720-4d870d63d38e.png)

   - To Simplify, please delete the following resources from the template and only keep the 3 core ones. 

   ![image.png](.attachments/image-c0082fd0-694a-4c5a-958c-32227230723a.png) 

7. Please see the folling two files attached in the workitem. These files are modified and complet ARM templates with good practices applied.
   - azuredeploy.json
   - azuredeploy.parameters.json
   - We have a few common parameters that we need
   - We have created variables for resource names based on a naming convention
   - We have extracted instrumentation key as output parameter so we can use it in pipeline for the application

You can now execute the deployment of the ARM template manually if you would like by calling the following one by one:

```powershell
Login-AzureRmAccount

$context = Get-AzureRmContext

Select-AzureRmSubscription -Name "SUBSCRIPTION NAME" -Context $context

# Validate that template is ok
.\Deploy-AzureResourceGroup.ps1 -ResourceGroupLocation westeurope -ResourceGroupName weu-musicstore-gdbc-rg -TemplateFile .\azuredeploy.json -TemplateParametersFile .\azuredeploy.parameters.json -ValidateOnly

# Run the deployment based on template and parameters file
.\Deploy-AzureResourceGroup.ps1 -ResourceGroupLocation westeurope -ResourceGroupName weu-musicstore-gdbc-rg -TemplateFile .\azuredeploy.json -TemplateParametersFile .\azuredeploy.parameters.json
```

1. **Important!** Make sure the naming convention / or resource names match your resource names in the resource group or it will create new resources instead of updating / finding that they exist 

## Commit & Change your build and release pipelines

1. Now commit the changes or added ARM template to version control. In my case they are located _/Provisioning/MvcMusicStore.ARM_.

2. Change your build to include those ARM template files also in the published artifact. 
e.g. You can use **Copy Files** task to copy these from _$(Build.SourcesDirectory)/Provisioning/MvcMusicStore.ARM/**_ into the _$(Build.ArtifactStagingDirectory)/ARM_ 

 ![image.png](.attachments/image-9d9c0685-e7a2-497e-b254-a5c77238d7e2.png)

**NB!** Make sure the **Publish Artifact** task will include $(Build.ArtifactStagingDirectory)/ARM

3. Change your release and include the template deployment in the pipeline for environment. Make sure to add it before web application is deployed, so you can use the instrumentation key that is output by the arm template. 
The following steps in release pipeline are needed and in this order.

 ![image.png](.attachments/image-7cdfa5c9-507b-4e39-ae81-3bbc34c3b0c3.png)

   - Your Azure Resource Group Deployment should be configured similar to the following:

 ![image.png](.attachments/image-0343a907-4461-48c8-92f3-515fdff421a8.png)

   **TIP!** Use variables where you need to repeat the same value in multiple steps or they change between environments e.g. resource group name 

   -  **ARM Outputs** and **Tokenize in Zip archive** tasks you will find from VSTS marketplace, if its missing

   - Make sure you have changed your **ApplicationInsights.config** file to include token like below. The InstrumentationKey attribute could/should be different per environment. This enables multiple AI streams. No unwanted Debug / Test runs in your Production logging. 

   ![image.png](.attachments/image-6892ba3e-f336-41cf-bdd7-1d576a397849.png)
