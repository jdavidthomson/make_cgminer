#!/bin/bash
sudo apt update
sudo apt install g++ freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev

wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run
chmod +x cuda_9.0.176_384.81_linux-run
sudo ./cuda_9.0.176_384.81_linux-run --override

sudo apt install pkg-config libtool automake
sudo apt install libcurl4-openssl-dev
sudo apt install opencl-headers

git clone https://github.com/jdavidthomson/cgminer.git && cd cgminer && git checkout v3.7.2-knc
./autogen.sh --enable-opencl
make
