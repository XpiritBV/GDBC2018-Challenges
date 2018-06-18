# Step by Step - Set up traceability of every change to production #

1. Open the Work Tab of your Team Project and create a new Product Backlog Item. Call it [Proof Audit Trail]
2. Save the PBI
3. From within the PBI create a new branch [features/ProofAuditTrail]
4. Navigate to your code tab and validate you are on the [features/ProofAuditTrail] branch
5. Create a new file ProofAuditTrail.txt and add some text to the file
6. Save and commit the file
7. Create a Pull Request and add a team member (or 2) as reviewer. Make sure the work item is linked (should be done automatically)
8. If the work item is not linked, link the work item manually.
9. (let) approve the Pull Request and  merge to the master branch
10. Run the build definition that was already created. If there is no build definition yet, create a build definition
11. Make sure the build has Test Execution, if it is not there, add a Test Runner Task
12. Open the existing Release definition or create a new release definition that uses the build that you just executed
13. Add the Release Notes task to your release 
14. Fill in the fields to generate release notes about this release
15. Run build and release