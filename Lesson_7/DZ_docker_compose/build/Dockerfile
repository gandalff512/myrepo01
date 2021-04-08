FROM maven:3.8.1-openjdk

RUN apt-get update && apt-get install git -y

WORKDIR /maven_box
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /maven_box
RUN mvn package