FROM openjdk:8-jre-alpine

EXPOSE 8081

COPY ./target/jenkins-demo-*.jar /usr/app/

WORKDIR /usr/app/

CMD java -jar jenkins-demo-*.jar