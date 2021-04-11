FROM openjdk:8-jre-alpine

WORKDIR /usr/local/tomcat

RUN wget https://mirrors.nav.ro/apache/tomcat/tomcat-8/v8.5.64/bin/apache-tomcat-8.5.64.tar.gz -O /tmp/tomcat.tar.gz

WORKDIR /tmp
RUN tar xvfz tomcat.tar.gz
RUN cp -Rv apache-tomcat-8.5.64/* /usr/local/tomcat/

EXPOSE 8080

CMD cp -r /usr/local/build/* /maven_box/boxfuse-sample-java-war-hello/webapps/
CMD /usr/local/tomcat/bin/catalina.sh run