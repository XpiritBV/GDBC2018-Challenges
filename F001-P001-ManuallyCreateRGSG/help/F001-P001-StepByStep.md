# Step By Step: Manually Set up Resource Groups for initial deployment of the web application #

## Creating a resource group ##
1. Open the Azure Portal by navigating to [https://portal.azure.com](https://portal.azure.com)
2. Click "Create a resource"

![image.png](.attachments/image-b0c742fc-112a-46c0-aa18-b79d886ca280.png)

3. In the search box, search for "Resource Group"

![image.png](.attachments/image-64253c72-9af5-49fa-b2cc-9dc43c031872.png)

4. In the search results, click "Resource group" and then click "Create"

![image.png](.attachments/image-c9dcbbfb-1e00-47aa-9186-ea358e2cdc27.png)

5. Enter the resource group name, select your subscription and select the location closest to you as Resource group location. Then click "Create".

![image.png](.attachments/image-7f4c3d18-00da-409e-a8b8-0c5f961b8f05.png)

6. After a little while your resource group will be created. Click "Go to resource group" to open it.

![image.png](.attachments/image-752186fb-4172-4a8d-991d-d921dfabec0e.png)

7. You will see that your freshly created resource group is empty.

![image.png](.attachments/image-238c5f62-e68d-4143-a7a3-6885ef0dd66d.png)

## Create security group and add members to security group ##
1. In the Azure portal navigate to the Azure Active Directory blade

![image.png](.attachments/image-3a01bbf2-844e-4ffe-aa13-ce19aa77f32a.png)

2. In the blade, select Groups

![image.png](.attachments/image-65b7e9d2-c59e-440c-9873-6c8c6a4943b6.png)

3. Press the + button to create a new security group
4. Create a group call Azure (teamname). Select as Group type "Security"
5. Select Members in the same blade 

![image.png](.attachments/image-403350b4-e260-45b5-9ad8-4f0a141d3af7.png)

6. Once the group is created, select "Members"
7. Press the + Add Members button
8. Search for "g-venue-" and select the members from your team and save the group

## Assign security group to resource group ##
1. Find your Resource Group e.g. use the Search box
2. In your resource group, click "Access control (IAM)", click "Add", select "Contributor" for the role and find your team through the search box.

![image.png](.attachments/image-access1.png)

3. Select your team and click "Save". You should see your team being added as "Contributor" specific for this resource.

![image.png](.attachments/image-access2.png)
