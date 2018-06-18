---
code: JI6KK4BY
effort: 5
bonus: false
required: true
type: Product Backlog Item 
---
# All changes to production should be approved #

## Description ##

GDBC Inc. got an internal audit initiated by its Compliance Officer. His job is to ensure that business operations is in compliance with legislation and regulation. Being compliant reduces the risk of substantial financial or reputational damage to the company.  
### ###
One of the audit issues is that changes directly flow to production. This introduces the risk that code can get in to production that causes damage to the company. There is a decision made to have an approval gate for every change that goes to production.

### Achievement ###
In this achievement you will set up a manual release gate to approve all the changes. A Pre-Deploy approval is needed from a business user to move a change to production

## Acceptance Criteria ##
* Manual approve of change to production.
* After approval change is deployed. Audit trail is visible in logs.

## Links ##
* [Release Approval in VSTS](https://docs.microsoft.com/en-us/vsts/build-release/concepts/definitions/release/approvals/approvals?view=vsts)
