---
code: A5L9JKJZ
effort: 15
bonus: false
required: true
type: Product Backlog Item 
---
# Run Unit Test in your build #

## Description ##

Make sure that your app still works after every check-in and build using VSTS. Find problems earlier by running tests automatically with each build. 
### ###
When your build is done, you can review your test results to start resolving the problems that you find.

### Achievement ###
In this exercise you will add running unit tests to your VSTS build. A good continuous integration process includes running tests to validate that the code always is in good shape. With code coverage data you can also monitor the trend to ensure that the developers keep adding tests in proportion to added code.

* Configure your build to run unit tests and collect code coverage
* Run a build and inspect the test run information

## Acceptance Criteria ##
* The build definition contains steps to run unit tests and collect code coverage
* A build has successfully been completed with unit test and code coverage metrics 
* Test results has been reviewed

## Links ##
* [Run unit tests with your builds](https://docs.microsoft.com/en-us/vsts/build-release/test/getting-started-with-continuous-testing)
* [Review continuous test results after a build](https://docs.microsoft.com/en-us/vsts/build-release/test/review-continuous-test-results-after-build)
* [Using code coverage](https://www.martinfowler.com/bliki/TestCoverage.html)