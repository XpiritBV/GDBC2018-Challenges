# Step By Step: Add Azure Web App and SQL Server to the resource group #

## Creating a Web App ##
1. Go to your newly created resource group and click "Create resources"

![image.png](.attachments/image-ca1321f6-c0bf-4167-b5c3-fbc929c51334.png)

2. Search for "Web App", select it and click "Create"

![image.png](.attachments/image-cde8a4b1-834b-4916-b281-8c53f0300ef7.png)

3. Enter a name for your new Web App, create a new App Service Plan for it, make sure you turn on Application Insights and click Create

![image.png](.attachments/image-0d6a7a51-43c1-4044-a9d1-c93738ad94ea.png)

4. After some time you will get a notification that creation of the web app was successful

![image.png](.attachments/image-53990de1-0d6f-4c1b-a817-847269ed8cdf.png)

## Create a SQL Database ##
1. Go back to your resource group (which now has the web app in it) and click "Add"

![image.png](.attachments/image-8a44d1cf-0ab8-45ca-aca3-fe7c370ea0e1.png)

2. Search for "SQL Database", click "SQL Database" and then click "Create"

![image.png](.attachments/image-71fbedef-30ec-474a-b951-af0f93791a4a.png)

3. Type a name for your database, select "Blank database" as source and configure a new server with admin credentials that will hold the database. Make sure you create a complex password, minimal 10 characters, and write down for later usage!

![image.png](.attachments/image-984c50aa-4cc1-4e88-8bb8-6f3e85c4da9b.png)

4. Change the "Pricing tier" to "Basic" and click "Apply. Then click "Create"

![image.png](.attachments/image-f9c74107-e706-4617-a647-ae0d09a57c9c.png)

5. After a while, your database will be created

![image.png](.attachments/image-1d933d2d-6eb4-422d-82c8-7058649ad1f6.png)

## Creating a database table ##
1. Go to your resource group and click your freshly created database

![image.png](.attachments/image-f7dba212-de1e-49d3-bade-4c19d41cf715.png)

2. Click "Query Editor (preview)" and click "Login". Login using the credentials you provided when creating the database.

![image.png](.attachments/image-c61e15e4-1497-479f-a9a1-fdee2ba5f6be.png)

3. Type the following query to create the database table:
`CREATE TABLE TestArtist (
    Id int primary key,
    Name varchar(255) not null
)`
4. Click "Run" to run the query. The query should succeed.

![image.png](.attachments/image-836dee50-d4a3-493f-9bcc-08419e8374a6.png)

5. Click the refresh button and you should see the new table with a primary key column "Id".

![image.png](.attachments/image-4ea415c2-f9af-49f5-a4f8-02bafe8e27c5.png)