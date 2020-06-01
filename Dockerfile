FROM gradle:6.4 AS build

COPY . /tmp/
WORKDIR /tmp/
RUN gradle build --no-daemon -x test

FROM openjdk:8-jdk-alpine

EXPOSE 8080

RUN mkdir /app

COPY --from=build /tmp/build/libs/*.jar /app/spring-boot-application.jar

RUN apk add --no-cache bash
COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

ENTRYPOINT ["/wait-for-it.sh", "docker-mysql:3306", "--", "java", "-jar","/app/spring-boot-application.jar"]
