USE AdventureWorks2012;  
GO  
CREATE USER Mary WITH PASSWORD = 'SecretPasswordForMary'; 
GO  
EXEC sp_addrolemember 'db_datareader', 'Mary';  