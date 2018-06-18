---
code: BEB6VJQW
effort: 20
bonus: false
required: true
type: Product Backlog Item 
---
# Set up a Continuous Integration Build (CI) #

## Description ##
The GDBC Inc. wants to be able to create the installation package for the website every time a change in source control is pushed. Currently, only one developer can build the software on his own developer machine and this creates a dependency with that person in order to deliver new features. Furthermore the team does not have a validation if the software is still in a deliverable state. 


## Achievement ##
In this achievement you will set up a Continuous Integration build. This build runs on every checkin to the application Git Repository. The CI build should compile the latest version of the product, run the unit tests and deliver a WebDeploy zip file that can be used to deploy to the webserver.

## Acceptance criteria ##
* When you commit and push new changes to the master branch a build is triggered.
* The build has at least the steps to compile and deliver the WebDeploy package, run the available unit tests and publish this to the artifact store
* After the build is finished you can browse the artifact store and see the zipfile that can be deployed to the webserver.

## Links ##
- [Connecting to a VSTS Team Project](https://docs.microsoft.com/en-us/vsts/user-guide/connect-team-projects?toc=%2Fvsts%2Faccounts%2Ftoc.json&bc=%2Fvsts%2Faccounts%2Fbreadcrumb%2Ftoc.json&view=vsts#connect-from-the-web-portal)
- [A quick introduction to CI/CD](https://docs.microsoft.com/en-us/vsts/build-release/actions/ci-cd-part-1?view=vsts#a-quick-introduction-to-cicd)
- [Create a Build Definition using VSTS](https://docs.microsoft.com/en-us/vsts/build-release/actions/ci-cd-part-1?view=vsts#create-a-build-definition)
- [Publish an artifact from your build](https://docs.microsoft.com/en-us/vsts/build-release/actions/ci-cd-part-1?view=vsts#publish-an-artifact-from-your-build)
- [Enable continuous integration (CI)](https://docs.microsoft.com/en-us/vsts/build-release/actions/ci-cd-part-1?view=vsts#enable-continuous-integration-ci)
- [Save and Queue a Build](https://docs.microsoft.com/en-us/vsts/build-release/actions/ci-cd-part-1?view=vsts#save-and-queue-the-build)