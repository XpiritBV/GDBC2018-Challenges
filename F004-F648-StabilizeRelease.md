---
code: ZZ5UBU71
type: feature
---
# Stabilizing the release takes a long time and release is not working #
## Description ##
GDBC Inc. is now very successful in delivering new software, but the team is faced with some nasty production stability issues.Product quality seems to be dropping over time and certain tests are not run, resulting in some frustration in the teams that things got into production while the issues could have been detected beforehand.
### ###
Management has asked the team to assess the problem an come up with a set of solutions to be implemented in the next sprint.
### ###
The team found the root cause to be in two primary places:
* Insufficient validation of the software that is committed to the source repository
* A lack of tests that validate some basic scenarios. 
### ###
The team wants to add the tests as standard part of the CI/CD process and add some additional smoke tests. They also want to add code reviews as part of the standard process, not only to prevent bugs to be committed, but also as a means to share knowledge amongst team members.
