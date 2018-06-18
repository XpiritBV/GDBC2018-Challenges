---
code: IFS77399
effort: 20
bonus: false
required: false
type: Product Backlog Item 
---
# Create a feature toggle switch page to (de)activate a feature #

## Description ##

The campaign was launched, but some unexpected errors occurred. Solving those errors took a lot of time and the lead-time for these
changes to be solved in production environment was quit long. In the mean time errors kept occurring until someone of the IT staff, who where
not available in the weekend the campaign launched and during the week where all intensively working on problem solving, had some time to change 
the web application configuration.
For the future, the marketing and sales department of GDBC Inc. wants to be able to quickly (de)activate the functionality when required.
Because of this they want an admin user to be able to (de)activate the feature flag through the administration page of the web application.
### ###
The goal is to:
* Turn off new functionality quickly in case something goes wrong and problem solving takes a long time.
* Make these changes without redeployment of the web application

### Achievement ###
In this achievement you will prepare the application so that an admin user can (de)activate the campaign functionality
for the upcoming marketing campaign.
* Add the option (de)activate the discount and sales functionality through the administration page replacing (de)activation through web.config
* Change the code that uses the web.config value to using the value set through the administration page
* Test if the feature is (de)activated when the setting is changed on the administration page

## Acceptance Criteria ##
* The feature flag setting can be set through the administration page by an admin user instead of changing the application configuration

## Links ##
* [Simple reliable feature toggles in .NET](https://github.com/jason-roberts/FeatureToggle)
