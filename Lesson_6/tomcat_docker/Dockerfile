FROM tomcat:latest
RUN apt-get update
RUN apt-get install maven default-jdk git -y
RUN mkdir /repo && cd /repo && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd /repo/boxfuse-sample-java-war-hello && mvn package
RUN cp /repo/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/
