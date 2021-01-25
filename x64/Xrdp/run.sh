sudo apt-get install -y xorg-video-abi-23
sudo apt-get install -y xrdp
sudo apt-get install -y xorgxrdp
sudo cp 45-allow-colord.pkla /etc/polkit-1/localauthority/50-local.d/

sudo service xrdp restart
