---
code: OV8YJ8NF
type: feature
---
# Optimizing the pipeline #
## Description ##
The GDBC Inc. development team spends a lot of time waiting for confirmations about the state of a deployment during a release, which results in slow cycle times.
They want to address this by automating the checks people do during deployment so that the system (VSTS) can detect a good or bad state. If the state is good the system
can automatically move to the next phase in the release process (typically to update the next environment).
### ###
The VSTS release process has a concept of approval gates. Gates allow you to query a range of external services, and wait for a positive input from all of them before continuing with a deployment to an environment. When a release is created from a definition that contains gates, the deployment stops until the health signals from all the configured services are successful as illustrated in the image below.
### ###
![](.\gate-results-pass.png)