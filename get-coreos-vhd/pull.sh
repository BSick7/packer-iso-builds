#!/bin/bash

docker build -t ubuntu_hyperv_vhd -f Dockerfile .
docker create --name ubuntu_hyperv_vhd ubuntu_hyper_vhd
mkdir -p ../vhd/
docker cp ubuntu_hyperv_vhd:/coreos/coreos_production.vhd ../vhd/coreos_production.vhd
