FROM ubuntu

WORKDIR /coreos

RUN apt-get update \
    && apt-get install -y bzip2 curl

RUN curl -sSL -o coreos_production.vhd.bz2 https://stable.release.core-os.net/amd64-usr/1465.7.0/coreos_production_hyperv_image.vhd.bz2 \
    && bzip2 -dk coreos_production.vhd.bz2
