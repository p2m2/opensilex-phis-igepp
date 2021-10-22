FROM maven:3.8.3-adoptopenjdk-8

ENV RELEASE https://github.com/OpenSILEX/opensilex/archive/refs/tags/1.0.0-rc.tar.gz
RUN apt-get -y update && apt-get install -y wget zip yarn git nodejs npm

RUN mkdir -p /home/opensilex

WORKDIR /home/opensilex/bin

RUN wget ${RELEASE} 
RUN tar xvf $( basename ${RELEASE} ) --strip-components=1
RUN mvn install -DskipTests=true

RUN mv ./opensilex-release/target/opensilex/opensilex.jar .
COPY ./bin/opensilex.sh /home/opensilex/bin/
COPY ./bin/logback.xml /home/opensilex/bin/

WORKDIR /home/opensilex

