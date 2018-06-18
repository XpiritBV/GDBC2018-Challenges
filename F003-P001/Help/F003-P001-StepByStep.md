# Step By Step: Set up separate Playground Test and Production resource groups #

## Setup Service Principal ##

1. Navigate to the Azure Portal
2. Login to the subscription (if not already) with the Team admin account
3. Navigate to the "Azure Active Directory"
4. Click "App registrations" and then "New application registration"

![image.png](.attachments/image-7d24cbff-3302-42a5-8898-2e2ef1862903.png)

5. Enter a name [GDBC-AutomateSPN-Teamname] and the url "http://localhost"

![image.png](.attachments/image-3bfe778b-018a-43ff-98b3-965fe1c4e3af.png)

6. Add permissions for the SPN for the "Graph API"

![image.png](.attachments/image-6e03dcfa-1347-4645-ac1c-01c50645fb37.png)

7. Select both permission groups "Application Permissions" and "Delegated Permissions"

![image.png](.attachments/image-dec39b68-3000-40bc-8c42-338313ca3d4a.png)

8. Confirm by clicking "Done"

![image.png](.attachments/image-5a6cba98-bfea-490e-9d27-cc0260cff05f.png)

9. Add a key

![image.png](.attachments/image-2892742e-1a25-4d34-9c2d-24b748126209.png)

10. Copy the value generated, store this for later usage!

![image.png](.attachments/image-1c3fcef8-21bb-4b35-ad25-49d94cd83bfc.png)

11. Write down and store the following items:
    1. Application Name
    2. Application ID
    3. Object ID
    4. Generate Key (step 9)

12. Open a powershell window, login as Team admin G-venuename-Admin

```powershell
Login-AzureRMAccount
```

13. Get the Subscription ID. Run

```powershell
Get-Azurermsubscription
```

If you see more than one subscription, ask the venue proctor which one to use (likely Azure Pass) and  copy the Subscription ID.

14. Run the CreateResourceGroupForSPN.ps1 script (attached to the workitem)

```powershell

.\CreateResourceGroupsforSPN.ps1 -applicationName "GDBC-AutomateSPN-Teamname" -subscriptionid <your subscription id> -resourcegroup "<your resource group name" -location "location"
 ```

You created a resource group and granted rights to the SPN. This SPN you can use later in VSTS.

To get the SPN application ID (later needed), run 

```powershell
Get-AzureRmADApplication -DisplayNameStartWith "name of your application you created in portal"
```

15. Run this script 3 times for all resource groups (Playground, Test, Production)

16. Check in the code to the IaC repo in Git