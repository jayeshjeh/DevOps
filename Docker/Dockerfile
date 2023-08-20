#Dockerfile to run java jar in linux machine. (Docker Compose file is required for this)

FROM openjdk:11-jre-slim-buster
EXPOSE 8091
ARG JAR_FILE=target/*.jar
COPY /Out-of-Stock-API.jar application.jar

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=aws", "application.jar"]
