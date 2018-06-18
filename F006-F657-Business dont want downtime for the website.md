---
code: JSM0R5DO
type: feature
---
# Business don't want downtime for the website #
## Description ##
The release pipeline is working out very well for GDBC Inc. and the team is thrilled that they now can roll out changes as soon as they are ready. 
Unfortunately the business isn't equally happy. Why? Because every time a new feature is deployed the system is unavailable for some time, then it's
usually slow for some time and if things don't work as expected the roll-back procedure is time consuming. So this needs to be improved.
### ###
To minimize the downtime for the website the team has decided to evaluate various techniques that reduce the time the system is unavailable during updates.
### ###
* Phased deployments to reduce the risk of deployment by releasing smaller parts at a time (deploy new version of app first, then when stable update the database, or other way around)
* Never break compatibility with existing clients (use telemetry to know when ok to remove feature)
  1. Add new feature but let old be active (use feature flag to toggle?)
  2. Make new feature default
  3. Deprecate old feature
  4. Monitor use of old feature
  5. Remove old feature
* Use staging environments (slots) to deploy to a pre-prod environment, which then can be swapped to production
* Use load balancing for scenarios where deployment slots aren't sufficient
* Deploy DB changes incrementally and make sure they are non-breaking