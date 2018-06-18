---
code: PE0HQ17Z
effort: 5
bonus: false
required: true
type: Product Backlog Item 
---
# Set up a private build agent #

## Description ##
In order to build and release the software using the VSTS tooling, you will need a build agent. Next to the hosted agents, provisioned by VSTS, you have the ability to provision your own private build agents.

## Achievement ##
In this achievement you will create a new build agent on a Virtual Machine hosted in Azure and configure the build agent to connect to your agent pool. In your build and release definition, you can then select this machine to run your tasks on. 

## Acceptance criteria ##
* The build agent is installed and configured using the instructions provided by Microsoft.
* Build agent is linked to the already provisioned agent queue for your team.

## Links ##
- [Deploy a private build agent](https://docs.microsoft.com/en-gb/vsts/pipelines/agents/v2-windows?view=vsts)
- [Build agents](https://docs.microsoft.com/en-gb/vsts/pipelines/agents/agents?view=vsts)
