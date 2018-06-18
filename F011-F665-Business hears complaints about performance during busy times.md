---
code: CFZYRGKR
type: feature
---
# Business hears complaints about performance during busy times #
## Description ##
The GDBC Inc. development team is in trouble, either something has impacted performance in the last few deployments or there has been a lot of behaviour change. In any case, there is a significant performance degradation in the last weeks and its especially visible during the busy hours. The first line support has been getting increasing number of calls from unhappy and frustrated users. 
### ###
Unfortunately the support cannot answer all the questions because they have a hard time finding the causes. After a constructive meeting the Development team came up with a few good questions.
### ###
* How to find out what is going on and in the future know if the latest deployed application is the cause of performance degradation? 
* How can we be proactive and know that there is performance degradation happening without getting angry calls from users?
* How to get more data to investigate what is causing the performance degradation and how many users are impacted by it?
### ###
One of the developers remembers that they integrated Azure Application Insights into the application for usage analytics, but its a full Application Performance Management Service and can also help with getting control over the performance issues they are facing and answer all the above questions
### ###
* Set up load tests to monitor site availability to be able to be proactive about performance issues 
* Integrate Application Insights to gain full insights into application performance from front to back
* Set up release annotation in the pipeline to create a marker in application insights so you can correlate performance and other data with deployments
* Add performance metrics to azure dashboard to monitor 