FROM ubuntu:xenial

# install ViSP packages
RUN apt-get update && apt-get install -y 
    libvisp-dev \
    visp-images-data \
    cmake \
    && rm -rf /var/lib/apt/lists/

COPY . /opt/ViSP

WORKDIR /opt/ViSP
