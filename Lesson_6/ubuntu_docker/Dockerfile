FROM ubuntu:latest

RUN apt-get update && apt-get install maven -y && apt-get install git -y && apt-get install wget  -y
RUN mkdir -p /usr/local/tomcat && wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.45/bin/apache-tomcat-9.0.45.tar.gz -O /tmp/tomcat.tar.gz

WORKDIR /tmp
RUN tar xvfz tomcat.tar.gz
RUN cp -Rv apache-tomcat-9.0.45/* /usr/local/tomcat/
RUN mkdir /box
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /box

WORKDIR /box
RUN mvn package
RUN cp /box/target/hello-1.0.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
