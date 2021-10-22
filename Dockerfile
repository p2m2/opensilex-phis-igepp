FROM tomcat:jre8-openjdk-slim

ENV RELEASE https://github.com/OpenSILEX/opensilex/releases/download/1.0.0-rc/opensilex-release-1.0.0-rc.zip
RUN apt-get -y update && apt-get install -y wget zip 

RUN mkdir -p /home/opensilex

WORKDIR /home/opensilex/bin
RUN wget ${RELEASE} 
RUN unzip $( basename ${RELEASE} )

COPY ./bin/opensilex.sh /home/opensilex/bin/
COPY ./bin/logback.xml /home/opensilex/bin/

WORKDIR /home/opensilex

