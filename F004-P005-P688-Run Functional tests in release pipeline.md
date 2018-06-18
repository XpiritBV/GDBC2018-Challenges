---
code: VP9LJY4R
effort: 15
bonus: true
required: false
type: Product Backlog Item 
---
# Run Functional tests in release pipeline #

## Description ##
Unit tests are great for validating the logic in the app but we also need functional tests to check that the system behaves
correctly when deployed into a specific environment. With functional tests we test with real data and configuration, 
test integrations and user interface.

### Achievement ###
In this challenge you will add functional tests to the deployment pipeline. These are implemented in your solution in the Selenium.Tests or CodedUI.Test projects. If the tests are UI tests interface special configuration of the test agent and the environment is needed. 
### ###
* Add functional tests to release definition. Functional tests may be both visual and non-visual tests, visual tests need to have 
an interactive test agent session and the UI infrastructure necessary for the tests to run (i.e. chrome and webdrivers installed).
* Separate configuration from the tests to make it possible to run them in any environment
* Create a release and see how the tests are run as part of the pipeline
* Design a suitable environment for running your tests

## Acceptance Criteria ##
* Functional tests added to release definition
* Code coverage data collected from functional tests
* Functional tests execution as part of the pipeline

## Links ##
* [Testing with unified agents and phases](https://docs.microsoft.com/en-us/vsts/build-release/test/test-with-unified-agent-and-phases)
* [Review continuous test results after a build](https://docs.microsoft.com/en-us/vsts/build-release/test/review-continuous-test-results-after-build)
* [Set up environments to run continuous test tasks with your build tasks](https://docs.microsoft.com/en-us/vsts/build-release/test/set-up-continuous-test-environments-builds)
