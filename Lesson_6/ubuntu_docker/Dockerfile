FROM ubuntu:latest

RUN apt-get update && apt-get install maven git wget  -y
RUN mkdir -p /usr/local/tomcat && wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.44/bin/apache-tomcat-9.0.44.tar.gz -O /tmp/tomcat.tar.gz

WORKDIR /tmp
RUN tar xvfz tomcat.tar.gz
RUN cp apache-tomcat-9.0.44/* /usr/local/tomcat/
RUN mkdir /box
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /box

WORKDIR /box
RUN mvn package
RUN cp /boxfuse/target/hello-1.0.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run