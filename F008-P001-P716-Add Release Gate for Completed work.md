---
code: UT86RB5K
effort: 10
bonus: false
required: true
type: Product Backlog Item 
---
# Release only when all requirements are done #

## Description ##

Now that the CI/CD pipeline is working, every check-in from a developer is a potential release candidate. Although it is possible, the Product Owner wants to have some control over what is released to production. He wants to release a set of requirements at once. Work items are nicely tracked in VSTS and he wants to release the software once these items are all set to done

### Achievement ###
In this achievement you are going to create a Deployment gate based on a Work Item Query. If the query results match your criteria, the release will be automatically approved and deployed.

* Create three (3) work items and tag them with "vNext"
* Create a Work Item query that lists all the "vNext" work items that are NOT done
* Create a pre-deployment gate that approves when this query does not get any results

## Acceptance Criteria ##
* Query for vNext items that are not done
* Query Work Items Deployment gate defined for Production Environment to approve when there are 0 results
* Automatically approved release by Deployment Gate

## Links ##
* [Release deployment control using gates](https://docs.microsoft.com/en-us/vsts/build-release/concepts/definitions/release/approvals/gates)
