FROM openjdk:23-slim-bullseye

RUN apt-get update && \
    apt-get upgrade && \
    apt-get install curl nano vim zip -y

WORKDIR /server