FROM amazoncorretto:8-alpine-jdk


EXPOSE 8080

COPY ./target/java-maven-build-1.0-SNAPSHOT.jar /usr/bin
WORKDIR /usr/bin

CMD java -jar java-maven-build-1.0-SNAPSHOT.jar
