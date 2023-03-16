FROM openjdk:8-jdk-alpine

# app runs on port 8080
EXPOSE 8080

WORKDIR /usr/src/app

# copy sources
COPY . .

# build app
RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
~
