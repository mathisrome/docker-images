FROM debian:bullseye

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install software-properties-common curl wget unzip vim nano procps -y
RUN apt-add-repository -y non-free
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install lib32gcc-s1 -y

WORKDIR /steam-servers

RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

RUN ./steamcmd.sh +force_install_dir ./unturned-server +login anonymous +app_update 1110390 validate +quit

WORKDIR /steam-servers/unturned-server

COPY MyServer Servers/MyServer
