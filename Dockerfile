# syntax=docker/dockerfile:1
FROM openjdk:17-alpine3.14
VOLUME /tmp
EXPOSE 8761
EXPOSE 9090
ARG JAR_FILE="/build/libs/*.jar"
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Xms1024M","-Xmx4096M","-jar","-Dspring.profiles.active=dev","/app.jar"]
