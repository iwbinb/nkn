#!/bin/sh
NKN 一键安装Github

sudo su
sudo apt update
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
sudo apt install unzip
wget https://commercial.nkn.org/downloads/nkn-commercial/linux-amd64.zip
unzip linux-amd64.zip 
cd linux-amd64
sudo ./nkn-commercial -b NKNSQJ5Avn8yN9Escntq5mYw7aBjQN6sDoJm install
sudo wget -P /home/ubuntu/linux-amd64/services/nkn-node https://nkn.org/ChainDB_pruned_latest.zip
cd /home/ubuntu/linux-amd64/services/nkn-node/
sudo mv ChainDB ChainDB_bak
sudo unzip /home/ubuntu/linux-amd64/services/nkn-node/ChainDB_pruned_latest.zip
sudo rm /home/ubuntu/linux-amd64/services/nkn-node/ChainDB_pruned_latest.zip
sudo rm -rf ChainDB_bak
more /home/ubuntu/linux-amd64/services/nkn-node/wallet.pswd
cat /home/ubuntu/linux-amd64/services/nkn-node/wallet.json
sudo reboot
