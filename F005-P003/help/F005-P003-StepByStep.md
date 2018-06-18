# Step by Step - Force traceability of work items #

1. Navigate to the code tab in your VSTS Project and make sure you are on the "Files" tab

2. Select the repository with the code for the MusicStore

3. Open the repository navigation and navigate to Manage repositories

![image.png](.attachments/image-50b345f0-9716-4538-a230-e244d230f0d9.png)

4. On the Version Control Tab, expand the right repository

5. Expand the branch section and select the "master" branch

![image.png](.attachments/image-e17df20a-942f-48c0-9cc2-48b35f1c131a.png)

6. VSTS will navigate you to the policies page

7. Select the checkbox "Check for linked work items" and set the policy requirement to Required

![image.png](.attachments/image-dd93014a-94b0-4aec-8759-302126abb525.png)

8. Navigate to your code repository and create a new branch

![image.png](.attachments/image-863605ab-30a2-40eb-98e4-8e6676769133.png)

9. Change or create a file and save and commit the changes to the repository
10. Create a Pull Request for this change to merge back into master. 
11. Open the Pull Request. You see that the policy is not fulfilled. No work items are linked

![image.png](.attachments/image-f6697ab8-fc13-4c9e-9a71-19af4e743903.png)

## Fix in Pull Request ##
1. Add a new Work Item by clicking the + sign next to work items and choose a work item

## Fix in Code Window ##
1.  Navigate to the code window
2. Make sure you selected the branch you just created
3. Make a new modification
4. Link work item when hitting Commit 

![image.png](.attachments/image-1e5689ac-b31c-4e0e-a21a-e22967b38d86.png)

## Fix from the start ##
1. Open a work item
2. Click "create branch"

![image.png](.attachments/image-9b77d8aa-a204-4583-b916-4bb318c2942b.png)
