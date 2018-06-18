---
code: D7CIVAVQ
effort: 30
bonus: true
required: false 
type: Product Backlog Item 
---
# Implement Zero Downtime for Database #

## Description ##

GDBC Inc sees that the vinyl records are great but there is also a big interest for separate songs (streaming), CD's and merchandise. They decide to create the possibility to also buy these items. Unfortunately the database does not support the desired changes and needs an update that will break existing code. Downtime cannot be afforded, so a plan is created to update the code and database in multiple steps to do a zero-downtime deployment of the database

### Achievement ###
In this challenge you will implement a strategy for handling zero downtime updates to the database. 

* Update the binaries to support multiple database schemas
* Update the database schema with new table
* Migrate existing data to new data structure
* Remove old table
* Change code to support one schema 

## Acceptance Criteria ##
* A change to the database has been deployed without breaking existing clients
* A change to the database has been deployed without affecting performance of the running application 

## Links ##
* [Designing highly available services using Azure SQL Database](https://docs.microsoft.com/en-us/azure/sql-database/sql-database-designing-cloud-solutions-for-disaster-recovery)
