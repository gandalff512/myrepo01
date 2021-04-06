FROM maven:3.8.1-openjdk
RUN mkdir /maven_box && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /maven_box
RUN mvn package