# Step By Step: Setup a CI Build #

## Create a Build Definition ##
1. Navigate to VSTS and select your project
[https://globaldevopsbootcamp.visualstudio.com](https://globaldevopsbootcamp.visualstudio.com)
2. Navigate to the "Build and Release" hub
3. Create a "New" definition

![image.png](.attachments/image-c3a9104b-8fa4-4cec-a3c3-dd0b46a1244b.png)

4. Configure the sources, select your correct team project, repository and branch. Then click "Continue".

![image.png](.attachments/image-525b25b2-7509-4e44-9305-f6b8ff49fcb9.png)

5. Select a template, use "ASP.NET", click "Apply"

![image.png](.attachments/image-c2fb3feb-27f6-45f0-a425-e3f590b8e49c.png)

6. Specify / change your build name and select the private build agent that you have installed as agent queue
7. If your repository contains multiple solutions, select the specific solution

![image.png](.attachments/image-8061d72b-3876-4f10-ad15-bc04065abd81.png)

8. Select the Visual Studio Build step, notice the MSBuild Arguments, this will provide a published 

![image.png](.attachments/image-fe8f5d37-d533-4a19-b9f6-5b329a94a941.png)

9. Select the "Test Assemblies" step, review the settings. Change the value for testassemblies from `**\$(BuildConfiguration)\*test*.dll`  to `**\$(BuildConfiguration)\*nunit.unittest*.dll`. This will only run the NUnit unit tests after the build.
![image.png](.attachments/image-26999b70-fadf-450a-a711-a4a87ce316f2.png)

## Enable Continuous Integration for your build ## 
1. While editing your build definition, navigate to the "Triggers" tab
2. Check the "Enable continuous integration" option

![image.png](.attachments/image-9eff0a58-4a2b-4f71-b9d5-9565f8395d86.png)

## Run the build ##
1. Press "Save & queue" to save and trigger the new build

![image.png](.attachments/image-988a5de2-c8de-40bb-a120-5dc8dbbf40fb.png)

2. Notice the feedback for the build being queued. Select the link to navigate to the build

![image.png](.attachments/image-c073e497-f7bc-4f87-ad9c-392d8947c500.png)

3. VSTS Provides direct feedback from the build agent

![image.png](.attachments/image-81630b85-50a5-4554-bcf6-1f3f126557ae.png)

4. After the build succeeds, refresh the browser
5. Notice the new "Artifacts" tab, and click it.

![image.png](.attachments/image-5a150e77-4891-41d9-ba95-38c6f19e3c01.png)

6. Select the "Explore" button behind the created artifact.
7. Expand the "Drop" folder
8. Check & Verify the desired output is part of the artifact. In this case a ".zip" file containing the application.

## Check that CI is triggered when a change to the code is pushed
1. Open the MVC Music Store solution in Visual Studio
2. Make a change to the web.config by adding a newline or a space in the file
3. Right click the web.config and click on Commit
4. Enter the required commit message and select Commit all and Push in the dropdown. This will push your change to the VSTS repo and trigger a new CI build.
5. Open VSTS in the browser
6. Click on the Build and Release tab
7. Click on Builds. You should see the build that you just triggered