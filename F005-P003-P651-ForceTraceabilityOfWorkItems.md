---
code: 4Y9I2X0W
effort: 5
bonus: false
required: false
type: Product Backlog Item 
---
# Force traceability of work items #

## Description ##

The internal audit also listed a traceability issue. It is not clear which requirement or issue was the reason for the code change.
End-to-end traceability was setup, but apparently not all developers make sure the administration to get the audit trail is done.

### ###

The GDBC Inc. IT department needs to find a way to remember developers about this when they tend to forget and to ensure that traceability
is always available.

### Achievement ###
In this challenge you will make sure that a code change is always linked to at least one work item by configuring a branching policy.

## Acceptance Criteria ##
* A pull request must be linked to at least one work item otherwise it will be blocked
* Completing the pull request without a linked workitem fails 

## Links ##
* [Branch policies](https://docs.microsoft.com/en-us/vsts/git/branch-policies-overview?view=vsts)
* [Improve code quality with branch policies](https://docs.microsoft.com/en-us/vsts/git/branch-policies?view=vsts)
* [Drive Git development from a work item](https://docs.microsoft.com/en-us/vsts/work/backlogs/connect-work-items-to-git-dev-ops?view=vsts)
* [Link work items to support traceability](https://docs.microsoft.com/en-us/vsts/work/track/link-work-items-support-traceability?view=vsts&tabs=new-web-form)
