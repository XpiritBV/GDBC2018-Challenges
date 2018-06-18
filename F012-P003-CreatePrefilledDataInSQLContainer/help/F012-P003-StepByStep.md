# Step By Step: Create prefilled data in SQL Server container #

1. Make sure that you have the Docker SQL Server container running with a prefilled database, from the previous exercise 

2. To commit an image, we need to stop the container. Do this by running 

**docker stop [container id]**

3. Then run 

**docker commit [container id] [registryname].azurecr.io/mvcmusicstoredb:1.0**

4. Now change the docker-compose file to instead use this image for the database. Do this by replacing the image name with your new image. Use the full image name **[registryname].azurecr.io/mvcmusicstoredb:1.0**

5. Change the application to not create a database on startup, but instead just use the existing one

6. Run the application and make sure that it works properly. 

**Note:** 
In a later challenge you will push the DB container to a Docker image registry. Using container technology like this makes it really easy to for example run and debug your application against a production database image container the data, without having to install anything on your local development machine
