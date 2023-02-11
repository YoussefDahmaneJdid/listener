FROM openjdk:11
VOLUME /tmp
EXPOSE 8080
RUN mvn clean install
ARG JAR_FILE=target/jp_lstnr-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]