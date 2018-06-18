---
code: K059DWTH
effort: 15
bonus: false
required: false
type: Product Backlog Item 
---
# Add a release gate that triggers the Azure function #

## Description ##

The Azure Function that returns the status if the deployment can proceed works great. GDBC Inc. wants to make this a part of the automated deployment process so that no manual interaction is needed. 

### Achievement ###
In this achievement you will add a release gate to your release pipeline. The release gate will call an Azure function to decide if the deployment can continue forward.

**Note:** The Azure function to be used here should have been created in an earlier challenge.

* Add a deployment gate to your release definition that calls an Azure function
* Run a new release and see how gates will speed up the release cycle

## Acceptance Criteria ##
* Deployment gate that calls the Azure function added to pipeline
* Completed release that continued deployment based on the gate evaluation

## Links ##
* [VSTS Release Gates](https://docs.microsoft.com/en-us/vsts/build-release/concepts/definitions/release/approvals/gates)
