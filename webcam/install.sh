#!/bin/bash

clear

sudo apt-get install build-essential libjpeg8-dev imagemagick libv4l-dev cmake git -y
mkdir ~/mjpg-streamer
cd ~/mjpg-streamer

git clone https://github.com/jacksonliam/mjpg-streamer.git
cd mjpg-streamer/mjpg-streamer-experimental

make
sudo make install

wget https://raw.githubusercontent.com/Turge08/3dprinting/master/webcam/stream.sh 

