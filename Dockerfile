FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/mhali922/jenkins-pipeline2.git

FROM maven:3.5-jdk-8-alpine as build
WORKDIR /app
COPY --from=clone /app/jenkins-pipeline2 /app
RUN mvn install

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/gs-spring-boot-docker-0.1.0.jar /app
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar gs-spring-boot-docker-0.1.0.jar"]
EXPOSE 8082
