FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  git-core \
  gnupg \
  flex \
  bison \
  gperf \
  build-essential \
  zip \
  curl \
  zlib1g-dev \
  gcc-multilib \
  g++-multilib \
  x11proto-core-dev \
  libx11-dev \
  libgl1-mesa-dev \
  libxml2-utils \
  xsltproc \
  unzip \
  python \
  python3 \
  openjdk-8-jdk \
  rsync \
  nano

ENV PATH=/home/aosp/bin:$PATH

RUN mkdir -p /home/aosp/bin && \
  curl https://storage.googleapis.com/git-repo-downloads/repo > /home/aosp/bin/repo && \
  chmod +x /home/aosp/bin/repo

WORKDIR /home/aosp
