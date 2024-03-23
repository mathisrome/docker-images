FROM --platform=linux/amd64 debian:bookworm

ENV DEBIAN_FRONTEND noninteractive
ENV CPU_MHZ 2000

RUN apt-get update && \
    apt-get install software-properties-common debconf-utils -y && \
    echo "deb http://ftp.us.debian.org/debian bookworm main non-free" > /etc/apt/sources.list.d/non-free.list && \
    dpkg --add-architecture i386 && \
    apt-get update && \
    echo 'steamcmd steam/question select I AGREE' | debconf-set-selections && \
    apt-get install steamcmd -y

RUN useradd -rm -d /home/steam -s /bin/bash -g root -G sudo -u 1001 steam
USER steam

WORKDIR /home/steam/steam-servers