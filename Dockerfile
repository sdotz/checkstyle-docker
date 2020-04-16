FROM openjdk:8

RUN apt-get update -yqq && apt-get install -yqq curl

RUN curl -L https://github.com/checkstyle/checkstyle/releases/download/checkstyle-8.31/checkstyle-8.31-all.jar > /checkstyle.jar

ENTRYPOINT ["java", "-jar", "/checkstyle.jar"]
