---
code: 3OSBJT6R
effort: 15
bonus: false
required: true
type: Product Backlog Item 
---
# Set up traceability of every change to production #

## Description ##

One of the things that needs to be provided as evidence in almost any audit is end-to-end traceability. Who made this change, when was this change made and how did this change end up in the code deployed to production. And is this change really on production and has it not been modified during the deployment process.

### Achievement ###
In this achievement you will show that compliancy is not as hard as it seems. You will proof to the regulatory office that any requirement can be traced. For that, you are going to implement a change and deploy this to production.

* Create a PBI that describes a change in your backlog
* Write some code (or dummy code) and link this change to the requirement
* Create a build that contains this change
* Run tests in the build
* Create a release that contains this build 
* Run tests in the release

## Acceptance Criteria ##
* The release report contains information about the requirement, code changes, tests and builds

## Links ##
* [VSTS Marketplace - Release notes task](https://marketplace.visualstudio.com/items?itemName=richardfennellBM.BM-VSTS-GenerateReleaseNotes-Task)
* [Work item policy](https://docs.microsoft.com/en-us/vsts/git/branch-policies?view=vsts#check-for-linked-work-items)
* [Branch policies](https://docs.microsoft.com/en-us/vsts/git/branch-policies-overview?view=vsts)
* [Improve code quality with branch policies](https://docs.microsoft.com/en-us/vsts/git/branch-policies?view=vsts)
* [Drive Git development from a work item](https://docs.microsoft.com/en-us/vsts/work/backlogs/connect-work-items-to-git-dev-ops?view=vsts)
* [Link work items to support traceability](https://docs.microsoft.com/en-us/vsts/work/track/link-work-items-support-traceability?view=vsts&tabs=new-web-form)
