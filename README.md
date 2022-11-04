# eureka-client

## Netflix Eureka client API Gateway aplication using `Spring Boot`
### Enabling API Gateway for [resource-service](https://github.com/Branjash/resource-service) and [songs-service](https://github.com/Branjash/songs-service) to be used through [resource-processor-service](https://github.com/Branjash/resource-processor)

### Startup

  1. Since it is a maven project, first build it using your local installed maven or using maven wrapper inside the project
     ```bash
      mvn clean package
     ```
      or using maven wrapper
      ```bash
      mvnw clean package
      ```
     NOTE! - **prerequiste is that you install docker engine on your machine**
  
  2. Inside project root, build local docker image of the project(project already contains prepared `Dockerfile`
     ```bash
     docker build -t eureka-client-local-image .
     ```
    
  4. Finally you can chech if the containers are running and check logs to if they are running properly
  
     - Check is application working by navigation through your browser to URL - `http://localhost:8088/service-instances/service-client` <br>
       You should see something like the image bellow, once the [Eureka Server](https://github.com/Branjash/eureka-server) is running properly <br>
       
       <img width="270" alt="Capture" src="https://user-images.githubusercontent.com/115099821/199920412-32d970eb-e982-4092-b2fc-5f0cbdbd8fe2.PNG">

  
  5. Now, if [resource-service](https://github.com/Branjash/resource-service) and [songs-service](https://github.com/Branjash/songs-service) are running as docker containers <br>
     you should be able to access them through the same host (**eureka-client**) for example:
     
        - For `songs-service` REST endpoints:  
          ```bash
          curl -X GET http://localhost:8088/songs/1
          ```
          
        - For `resource-service` REST endpoints
          ```bash
          curl -X GET http://localhost:8088/resources/1
          ```
