FROM maven:3.8.7-openjdk-18-slim AS build

RUN mkdir /opt/app

COPY . /opt/app

WORKDIR /opt/app

RUN mvn clean package

ENV PROFILE=dev

EXPOSE 8080

ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILE}", "-jar", "target/app.jar"]
