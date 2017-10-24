sudo apt install pkg-config libtool
sudo apt install libcurl4-openssl-dev
sudo apt-get install opencl-headers


git clone https://github.com/jdavidthomson/cgminer.git && cd cgminer && git checkout v3.7.2-knc

./autogen.sh --enable-opencl
./make
