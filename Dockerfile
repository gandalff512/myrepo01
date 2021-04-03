FROM tomcat:latest
RUN apt-get update
RUN apt-get install maven git -y
RUN mkdir /repo && cd /repo && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd /repo/boxfuse-sample-java-war-hello && mvn package
EXPOSE 8080
RUN cp /repo/boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/
CMD ["catalina.sh", "run"]
