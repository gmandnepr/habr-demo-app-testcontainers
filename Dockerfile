FROM openjdk:11-jdk-slim
WORKDIR /home/demo
ARG REVISION
COPY target/habr-demo-app-testcontainers-${REVISION}.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
