#!/bin/bash

sudo apt-get update
sudo apt-get install -y \
     git \
     cmake \
     libreadline-dev \
     python-software-properties \
     software-properties-common \
     libprotobuf-dev \
     protobuf-compiler \
     libjpeg-dev \
     libpng12-dev

# Install Torch
sudo mkdir -p /usr/local/torch
sudo chown -R nimbix:nimbix /usr/local/torch
curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
git clone https://github.com/torch/distro.git /usr/local/torch --recursive
cd /usr/local/torch; ./install.sh -b

. /usr/local/torch/install/bin/torch-activate
LUAROCKS=`which luarocks`
if [ -z "${LUAROCKS}" ]; then
    echo "Failure to install torch!"
    exit 1
fi

echo ". /usr/local/torch/install/bin/torch-activate" | sudo tee -a /etc/skel/.bashrc
