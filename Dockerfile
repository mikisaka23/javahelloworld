FROM java:8

#COPY HelloWorld.java /
#RUN javac HelloWorld.java
#ENTRYPOINT ["java", "HelloWorld"]

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld

#ENV TEST_ENV_VAR docker_test_var

RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

RUN apt-get update && apt-get install -y vim

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
