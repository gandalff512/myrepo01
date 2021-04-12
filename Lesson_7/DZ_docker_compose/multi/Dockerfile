FROM ubuntu:latest

RUN apt-get update && apt-get install maven -y && apt-get install git -y

WORKDIR /usr/local/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /usr/local/boxfuse-sample-java-war-hello/
RUN mvn package

WORKDIR /usr/local/build/
RUN cp /usr/local/boxfuse-sample-java-war-hello/target/hello-1.0.war .

FROM openjdk:8-jre-alpine

WORKDIR /usr/local/tomcat

RUN wget https://mirrors.nav.ro/apache/tomcat/tomcat-8/v8.5.65/bin/apache-tomcat-8.5.65.tar.gz -O /tmp/apache-tomcat-8.5.65.tar.gz

WORKDIR /tmp
RUN tar xvfz apache-tomcat-8.5.65.tar.gz
RUN cp -Rv apache-tomcat-8.5.65/* /usr/local/tomcat/

EXPOSE 8080

RUN cp /usr/local/build/hello-1.0.war /usr/local/tomcat/webapps/hello-1.0.war
CMD /usr/local/tomcat/bin/catalina.sh run