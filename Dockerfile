FROM amazoncorreto:8-alpine3.21-jre

EXPOSE 8080

COPY ./target/java-maven-build-1.0-SNAPSHOT.jar /usr/app
WORKDIR /usr/app

CMD java -jar java-maven-build-1.0-SNAPSHOT.jar
