FROM ubuntu:16.04
MAINTAINER Soo Lee (duplexa@gmail.com)

# 1. general updates & installing necessary Linux components
RUN apt-get update -y && apt-get install -y \
    bzip2 \
    gcc \
    git \
    less \
    libncurses-dev \
    make \
    time \
    unzip \
    vim \
    wget \
    zlib1g-dev \
    liblz4-tool \
    libxml2-dev

#Setting working directory & path
WORKDIR /usr/local/bin

# wrapper
COPY scripts/ /usr/local/bin/
RUN chmod +x run*.sh

# default command
CMD ["ls","/usr/local/bin/"]
