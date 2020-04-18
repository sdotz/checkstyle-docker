FROM openjdk:8

#If you'd like to use -f xml and parse the output, this'll get ya started
#RUN apt-get update -yqq && apt-get install -yqq curl jq python3 python3-pip
#RUN pip3 install yq

RUN curl -L https://github.com/checkstyle/checkstyle/releases/download/checkstyle-8.31/checkstyle-8.31-all.jar > /checkstyle.jar

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
