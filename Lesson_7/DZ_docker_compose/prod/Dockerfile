FROM openjdk:8-jre-alpine

WORKDIR /usr/local/tomcat

RUN wget https://mirrors.nav.ro/apache/tomcat/tomcat-8/v8.5.65/bin/apache-tomcat-8.5.65.tar.gz -O /tmp/apache-tomcat-8.5.65.tar.gz

WORKDIR /tmp
RUN tar xvfz apache-tomcat-8.5.65.tar.gz
RUN cp -Rv apache-tomcat-8.5.65/* /usr/local/tomcat/

EXPOSE 8080

CMD cp -r /usr/local/build/* /usr/local/webapps/
CMD /usr/local/tomcat/bin/catalina.sh run