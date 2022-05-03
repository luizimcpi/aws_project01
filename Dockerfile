FROM adoptopenjdk/openjdk11
LABEL maintainer="luizimcpi@gmail.com"
VOLUME /tmp
ARG JAR_FILE=build/libs/aws_project01-*.jar
ADD ${JAR_FILE} aws_project01.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/aws_project01.jar"]