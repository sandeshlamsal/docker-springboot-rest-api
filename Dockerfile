#pull the alpine server with jdk in it
FROM openjdk:16-alpine
#set the jar file location in local machine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
#copy all the jar file with name app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
#once the container runs, run the app.jar file
#run the docker as
#springboot-restapi is a tag
#commands to use
#docker build -t springboot-restapi .
#docker run -p 8081:8080 springboot-restapi
#(8080 port of app is mapped to 8081 as container)
#TEST CODE
#curl localhost:8081