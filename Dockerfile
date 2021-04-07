FROM java:8
ENV javadir=/home/root/javahelloworld
COPY src $javadir/src
WORKDIR $javadir
RUN mkdir bin && javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

