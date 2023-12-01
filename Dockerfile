FROM openjdk:17-jdk-slim
FROM maven:latest

WORKDIR /building

ADD pom.xml /building

COPY src /building/src

RUN mvn verify clean --fail-never 

RUN mvn clean install -DskipTests

WORKDIR /

RUN mkdir main-app && mv /building/target/*.jar /main-app/app.jar

RUN rm -rf /building

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=dev", "/main-app/app.jar"]