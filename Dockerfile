FROM openjdk:latest

WORKDIR /home/opensilex

COPY data data
COPY config config
COPY bin bin
COPY logs log

