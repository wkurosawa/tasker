FROM gradle:6.4 AS build

COPY . /tmp/
WORKDIR /tmp/
RUN gradle build --no-daemon -x test

FROM openjdk:8-jdk-alpine

EXPOSE 8080

RUN mkdir /app

COPY --from=build /tmp/build/libs/*.jar /app/spring-boot-application.jar

ENTRYPOINT ["java", "-jar","/app/spring-boot-application.jar"]
