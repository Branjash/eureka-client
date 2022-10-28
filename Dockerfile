FROM openjdk:8-jdk-alpine
LABEL maintainer="branko_rovcanin@epam.com"
VOLUME /eureka-client
COPY ./target/eureka-client-0.0.1-SNAPSHOT.jar /usr/app/
EXPOSE 8088-8098
WORKDIR /usr/app
ENTRYPOINT ["java","-jar", "eureka-client-0.0.1-SNAPSHOT.jar"]