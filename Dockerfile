FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt install -y \
      build-essential \
      automake \
      cmake \
      gcc-multilib \
      g++-multilib \
      libsdl1.2-dev \
      libsdl-sound1.2-dev \
      libsdl-net1.2-dev \
      libvorbis-dev \
      libogg-dev \
      libpng-dev \
      freeglut3-dev \
      libx11-dev \
      subversion 
COPY build-dosbox.sh /usr/bin/build-dosbox
RUN chmod a+x /usr/bin/build-dosbox

ENTRYPOINT "/usr/bin/build-dosbox"
