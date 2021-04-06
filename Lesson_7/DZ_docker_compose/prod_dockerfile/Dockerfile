FROM maven:3.5.2-jdk-8
RUN mkdir /maven_box && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /maven_box
RUN mvn package