---
code: CM8UF1K2
effort: 5
bonus: false
required: true
type: Product Backlog Item 
---

# Move the automation scripts to Git version control #

## Description ##

Now that automation scripts are created, the move to DevOps has really started. The automation scripts are available to be used, but we want to keep our sources safe, track the changes we made and be able to use the scripts in our build and release pipeline. This way the team can ensure a reliable and stable way of rolling out new environments on demand. The team wants to use Git as the version control repository and they want to keep the automation separate from the application sources. They create a new Git Repo in the same team project, so the sources are kept separate. 

### Achievement ###
In this achievement you will create a new Git Repository in your VSTS Team project that holds all the automation scripts and Infrastructure as Code files. Call this Git Repo Team-IaC.

## Acceptance criteria ##
* A new Git Repository that only contains the automation scripts to create the required Azure resources 
* Git Repository contains the automation scripts for Resource Group creation and Resources creation
* Team members are able to clone the Git Repo
* Team members can make changes to the Git Repo

## Links ##
- [Create a new Git repo in your project](https://docs.microsoft.com/en-us/vsts/git/create-new-repo?view=vsts)
