sudo apt-get install -y xorg-video-abi-23
sudo apt-get install -y xrdp
sudo apt-get install -y xorgxrdp
sudo cp 45-allow-colord.pkla /etc/polkit-1/localauthority/50-local.d/

sudo service xrdp restart
# 검은 화면일 때
# sudo vim /etc/xrdp/startwm.sh

#unset DBUS_SESSION_BUS_ADDRESS
#unset XDG_RUNTIME_DIR
#. $HOME/.profile
