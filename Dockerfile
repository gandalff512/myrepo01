FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install maven default-jdk git tomcat9 -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello
RUN mvn package
RUN cp /home/ubuntu/boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/
CMD ["tomcat9", "-g", "daemon off;"]
