#!/bin/bash

set -e

sudo apt-get install -y build-essential cmake pkg-config
sudo apt-get install -y libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev
sudo apt-get install -y libgtk2.0-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libatlas-base-dev gfortran

wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/.cache/pip

echo "" >>~/.profile
echo "# virtualenv and virtualenvwrapper" >>~/.profile
echo "export WORKON_HOME=\$HOME/.virtualenvs" >>~/.profile
echo "source /usr/local/bin/virtualenvwrapper.sh" >>~/.profile
