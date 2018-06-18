---
code: CAF5OTKR
effort: 10
bonus: false
required: false
type: Product Backlog Item 
---
# Setup branch policies for code review #

## Description ##


After the audit, it became clear that a developer that makes a change to the code is also the reviewer of that same code.
to tackle this the IT department of GDBC Inc. wants to setup a structural code review process.
### ###
This code review process will not only solve the compliancy audit issue. Since GDBC Inc. is adopting a DevOps way of working the IT department wants to catch bugs or issues as early as possible. Reviewing the code will make catching these bugs or issues shift to the left of the software delivery process. 

### ###

Also the DevOps culture of sharing knowledge will be stimulated, because developers will see each others solutions to a given requirement and educate each other in delivering higher quality code.

### Achievement ###
In this challenge you will configure a branch policy that will enforce that a code review is required before a pull request can be completed.

Setting up a code review process will achieve the following goals:
* Reduce the risk of low quality/malicious/insecure code getting into production that can cause damage to the company in any way
* Minimize the amount of technical debt introduced into a code base
* Increase team collaboration and sharing of knowledge 

## Acceptance Criteria ##
* Before a pull request can be completed the code must be reviewed by at least one other developer.
* It is not allowed for a developer to accept his/her own changes
* All reviewers must accept the proposed code change before it can be completed

## Links ##
* [Branch policies](https://docs.microsoft.com/en-us/vsts/git/branch-policies-overview?view=vsts)
* [Improve code quality with branch policies](https://docs.microsoft.com/en-us/vsts/git/branch-policies?view=vsts)
