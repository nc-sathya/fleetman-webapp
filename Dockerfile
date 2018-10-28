FROM tomcat:8.5.34-jre8-alpine

MAINTAINER SATHYA NAGULA "sathya.nagula@gmail.com"

#EXPOSE 8080

RUN rm -rf /usr/local/tomcat/webapps/*

COPY ./target/fleetman-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

ENV JAVA_OPTS="-Dspring.profiles.active=docker-demo"

CMD ["catalina.sh","run"]