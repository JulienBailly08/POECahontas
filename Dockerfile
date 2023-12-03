FROM maven:3.9.5-eclipse-temurin-21-alpine

WORKDIR /building

ADD pom.xml /building

COPY src /building/src

RUN mvn verify clean --fail-never 

RUN mvn clean install -DskipTests

WORKDIR /

RUN mkdir main-app && mv /building/target/*.jar /main-app/app.jar


ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=dev", "/main-app/app.jar"]