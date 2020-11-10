FROM ubuntu:14.04
MAINTAINER Hikaru Sugiura (http://github.com/aquahika)

# Install deps
RUN apt-get update && apt-get install -y \
                    git gnupg flex bison gperf \
                    build-essential zip curl zlib1g-dev \
                    gcc-multilib g++-multilib libc6-dev-i386 \
                    lib32ncurses5-dev x11proto-core-dev libx11-dev \
                    lib32z1-dev ccache libgl1-mesa-dev libxml2-utils \
                    xsltproc unzip \
                    bc python \
                    software-properties-common \
                    && rm -rf /var/lib/apt/lists/* 


RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update && apt-get install -y \
                            openjdk-8-jdk \
                            && rm -rf /var/lib/apt/lists/*


ENV USER root

WORKDIR /workdir