---
code: DMZX0J8X
effort: 10
bonus: false
required: true 
type: Product Backlog Item 
---
# Hide a discount banner and sales funnel with a feature toggle #

## Description ##

The marketing and sales department of GDBC Inc. are working on a global marketing campaign during which a few top selling products will be offered with significant price reductions
during a limited time window. The exact date at which the campaign will be broadcasted on television isn't known yet. It is important that the discount banner will be displayed on the
website together with or shortly after the television broadcast. 
### ###
The goal is to:
* Get feedback on functionality that has been activated
* Decouple deployment and exposure of new functionality

### Achievement ###
In this achievement you will prepare the application for the upcoming marketing campaign.
* Add code to the application that is required to support feature flags
* Test if the banner is displayed based on the feature flag setting.

## Acceptance Criteria ##
* The discount text/banner on the homepage can be (de)activated with a feature flag 
* The feature flag setting can be set through configuration

## Links ##
* [Martin Fowler on Feature flags (toggles)](https://martinfowler.com/articles/feature-toggles.html)
* [Simple reliable feature toggles in .NET](https://github.com/jason-roberts/FeatureToggle)
* [The hub for feature flag driven development: featureflags.io](http://featureflags.io)
* [LaunchDarkly giving an overview of feature flag driven development, from gradual rollouts to A/B testing. ](http://blog.launchdarkly.com/feature-flag-driven-development/)
* [Adding a feature flag to a webapplication (see Task 1 on this page)](https://microsoft.github.io/PartsUnlimited/advanced/FeatureFlagWeb.html)
* [An example that causes a performance issue (see Task 3 on this page)](https://microsoft.github.io/PartsUnlimited/advanced/UserTelemetry.html)
* [How to read a configuration setting from web.config](https://msdn.microsoft.com/en-us/library/610xe886.aspx)
* [Feature Toggle Documentation](http://jason-roberts.github.io/FeatureToggle.Docs/pages/usage.html)
