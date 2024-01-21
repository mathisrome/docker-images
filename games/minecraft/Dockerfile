FROM eclipse-temurin:21-jdk-jammy

RUN apt-get update -y && \
    apt-get upgrade -y  && \
    apt-get install curl nano vim zip screen procps -y

WORKDIR /server

COPY ./start-server.sh ./start-server.sh
RUN chmod +x start-server.sh

COPY server.jar server.jar

RUN echo eula=true >> eula.txt

CMD ["sh", "-c", "./start-server.sh; tail -f /dev/null"]