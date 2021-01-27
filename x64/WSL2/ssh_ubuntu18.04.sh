#/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get purge openssh-server -y
sudo apt-get install -y openssh-server

echo "Port 22"|sudo tee -a /etc/ssh/sshd_config
echo "Protocol 2"|sudo tee -a /etc/ssh/sshd_config
echo "PermitRootLogin no"|sudo tee -a /etc/ssh/sshd_config
echo "AuthorizedKeysFile  .ssh/authorized_keys"|sudo tee -a /etc/ssh/sshd_config
echo "PasswordAuthentication yes"|sudo tee -a /etc/ssh/sshd_config
echo "ChallengeResponseAuthentication no"|sudo tee -a /etc/ssh/sshd_config
echo "X11Forwarding yes"|sudo tee -a /etc/ssh/sshd_config
echo "PubkeyAuthentication yes"|sudo tee -a /etc/ssh/sshd_config
echo "UseDNS no"|sudo tee -a /etc/ssh/sshd_config


sudo service ssh --full-restart
sudo service ssh restart

echo "*** finish set!! ***"
echo "*** check ssh!! ***"
echo "\"ssh localhost\""
