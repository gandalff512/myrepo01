FROM maven:3.8.1-openjdk

RUN apt-get update && apt-get install git -y

WORKDIR /usr/local/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /usr/local/boxfuse-sample-java-war-hello/
RUN mvn package

WORKDIR /usr/local/webapps/
RUN cp /usr/local/boxfuse-sample-java-war-hello/target/hello-1.0.war .

