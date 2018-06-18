---
code: 0F99ZR7Q
type: feature
---
# Business wants to understand what is used in the application #
## Description ##
Finally the releases are more stable and the speed of new features being implemented is increased. The features that were previously defined to be developed are in progress and business has many ideas on what to improve, implement or change next. However the list is very long, since the speed has been hampered for a long period of time. The team now struggles with what adds most value to build next. They need help in a set of questions that help them set priority. 
### ###
Questions such as:
* What should we prioritize?
* What would have the highest impact?
* Which would help support revenue growth? 
* What from the idea lists are still relevant? 
### ###
In the discussions everyone seem to have different ideas and it feels more like politics than acting based on evidence or data. Finally the CTO asked the question - how do we know that implementing these 5 features will support our goals the best? Where is the proof? The data? 
### ###
Instead of guessing, we should understand how our application is being used and what features and how much from our product are being used? Having our product collect such data and provide real live information would be immensely valuable in understanding where the company should invest next. So that is the next highest priority feature to be implemented. We need to know reliably where we should invest next and be able to answer questions such as:
- Who is using our application?
- What actions do they take in the system and what features are not used at all?
- What business flows (multiple actions in sequence that have meaning to business and create value) do they use and are they able to complete the flow or do we have usability problems with current implementations?
### ###
After some investigations regarding the chosen Azure platform, the team has learned that there is an APM (Application Performance Management) service called Azure Application Insights that can be integrated with the current application to start getting insights into the application usage. 
### ###
the team is asked to do the following:
* Investigate and set up Application Insights in Azure from pipeline 
* Investigate and integrate azure application insights into the application to collect usage data
* Implement custom events for every menu item change
* Investigate default Application Insights Usage analysis views and add Azure Dashboard to show usage data
