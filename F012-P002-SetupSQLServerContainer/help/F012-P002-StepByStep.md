# Step By Step: Setup a SQL Server container #

1. Open the **docker-compose.yml** file in Visual Studio (or VSCode) 

2. Add a new Docker service for the SQL Server, as shown below:

```yaml
  mvcmusicstoredb:
    image: "microsoft/mssql-server-windows-express:1709"
    environment:
      SA_PASSWORD: "P@ssw0rd"
      ACCEPT_EULA: "Y"
```

3. Add a *depends_on* field to the web Docker service, so that the containers start in the correct order:
```yaml
    depends_on:
    - mvcmusicstoredb
```

4. To make the MvcMusicStore application use this SQL server, we need to define the connection string as an environment variable in the Docker service:
 
 ```yaml
     environment:
      MusicStoreEntities: "Data Source=mvcmusicstoredb;Initial Catalog=MusicStore;user id=sa;password=P@ssw0rd"
 ```

1. The docker-compose.yml file should now look like this 
**Note**: if you don't have the $(DOCKER_REGISTRY) variable, never mind. This was added in one of the most recent updates of Visual Studio:

```yaml
version: '3.4'

services:
  mvcmusicstore:
    image: ${DOCKER_REGISTRY}mvcmusicstore
    build:
      context: .\MvcMusicStore
      dockerfile: Dockerfile
    depends_on:
    - mvcmusicstoredb
    environment:
      MusicStoreEntities: "Data Source=mvcmusicstoredb;Initial Catalog=MusicStore;user id=sa;password=P@ssw0rd"

  mvcmusicstoredb:
    image: "microsoft/mssql-server-windows-express:1709"
    environment:
      SA_PASSWORD: "P@ssw0rd"
      ACCEPT_EULA: "Y"
```

6. In order to use the connection string from the environment, we need to change the code a bit so that when we are reading the connection string, it should first look for a matching environment variable, and if that doesn't exist it will look in the configuration file.

7. Fortunately in .NET 4.7.1, this functionality is available using a new NuGet package so we don't have to write any code for it!

8. Add the following NuGet package to the MvcMusicStore project: **Microsoft.Configuration.ConfigurationBuilders.Environment**

9. When installing this NuGet package, it will also add some new configuration settings to the web.config.

10. That's it! Make sure that the docker-compose project is active, and run the application again

7. The MvcMusicStore application should now talk to the SQL Server and create a database using EF migrations. The connection string was picked up automatically from the environment variables that we provided in the docker-compose file. Verify that the application is running correctly.

8. Also verify that you now how two running containers, by opening a command prompt and run *docker ps*

9. To find the IP address of the SQL Server, note the container id of the running SQL server container from the previous command, and then run *docker inspect [container id]*

10. In the network section of the Docker definition, you will see the IP Address in the **IPAddress" field.

11. Open SQL Management Studio and connect to the SQL server inside the container by using the IP address from the previous step, and the login information from the docker-compose file