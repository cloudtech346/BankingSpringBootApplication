FROM eclipse-temurin:25-jre

WORKDIR /

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8989

ENTRYPOINT ["java","-jar","app.jar"]
