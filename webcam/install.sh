#!/bin/bash

clear

sudo apt-get install build-essential libjpeg8-dev imagemagick libv4l-dev cmake git -y
mkdir ~/mjpg-streamer
cd ~/mjpg-streamer

git clone https://github.com/jacksonliam/mjpg-streamer.git
cd mjpg-streamer/mjpg-streamer-experimental

make
sudo make install

sudo wget https://raw.githubusercontent.com/Turge08/3dprinting/master/webcam/stream.sh -P /etc/init.d/
sudo chmod 755 /etc/init.d/stream.sh
sudo update-rc.d stream.sh defaults
sudo service stream start
