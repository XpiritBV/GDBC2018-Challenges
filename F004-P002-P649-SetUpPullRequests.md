---
code: WD7VHGH0
effort: 10
bonus: false
required: true
type: Product Backlog Item 
---
# Set up pull requests and short lived feature branches #

## Description ##
To ensure the code that is checked into the repository is of the correct quality the team wants to do code reviews. The way to enforce the code reviews is by requiring a pull request before code can be merged into the main branch. A git pull requests has the code review feature as part of the code review.

### Achievement ###
In this achievement you will use the Pull Request mechanism in VSTS to ensure that every change is reviewed by at least 1 other developer. You will guard the main branch to prevent direct commits by setting up a branch policy.

## Acceptance Criteria ##
* No code can enter the master branch without being reviewed
* Evidence that a code review has been performed when looking at any commit in the master branch

## Links ##
* [Pull requests](https://docs.microsoft.com/en-us/vsts/git/pull-requests-overview?view=vsts)
* [Create a pull requests](https://docs.microsoft.com/en-us/vsts/git/tutorial/pullrequest?view=vsts)