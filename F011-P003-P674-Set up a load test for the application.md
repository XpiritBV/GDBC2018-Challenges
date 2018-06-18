---
code: TU78PU07
effort: 15
bonus: true
required: false
type: Product Backlog Item 
---
# Set up a availability and load test for the application #

## Description ##

Some users report some pages that are not available on specific times. After some investigation this had various reasons. To be more proactive in mitigating problems before they are deployed to production, the Lead Architect wants to make sure that the most important parts of the application are checked on a regular bases. He also want to hit the application with some load to see if this changes behaviour.

Application Insights has a feature called "availability" that offers the functionality to check the availability of your application by running a test on those pages on a regular interval from multiple regions. These web tests can be either simple ping tests from multiple locations or multi-step tests that go through a sequence of business functionality (such as going to home page, logging in, navigating to x).

### Achievement ###
Setup single step availability test called URL ping test that would  ping your application and continuously monitor the availability and responsiveness. Set it up with 5 minute interval and from 4 locations that are relevant to GDBC Inc application (your choice). 


## Acceptance Criteria ##
* Single url ping test setup and running / monitoring availability and responsiveness
* Test trial application unavailability to confirm good and bad scenario visibility
* Add site availability to your azure dashboard

## Links ##
* [Monitor availability and responsiveness of any web site](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-monitor-web-app-availability)
