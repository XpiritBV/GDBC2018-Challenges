---
code: BLKS7IEO
type: feature
---
# Remove deployment dependencies from individuals #

## Description ##

After completing the successful Proof Of Concept of running their application in an Azure website, it is now time to make things production ready. The team experienced a problem with the fact that one developer can only publish to the website and that he is not always available. Management does not want to be dependent on one specific person to deploy a new version of the application and asks the team if there is an alternative way to do this. Preferably everyone can release the software to production after they have been asked to do so. The team decides to create a deployment automation that publishes to the Azure website and can be triggered manually.

### ###

The idea is that the moment a new change is pushed to the Git Repository, the automated build kicks in. After a successful build, a release can be manually triggered that publishes to the production web app in Azure.

