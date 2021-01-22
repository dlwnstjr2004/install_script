##/bin/bash

set -e
sudo apt-get update -y
sudo apt-get install -y python3-dev python3-pip
python3 -m pip install -U pip
sudo -H pip3 install -U jetson-stats
