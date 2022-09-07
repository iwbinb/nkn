#!/bin/sh
# NKN 一键安装Github

sudo su
cd /home/ubuntu/
sudo apt update
sudo apt install unzip
wget https://commercial.nkn.org/downloads/nkn-commercial/linux-amd64.zip
unzip linux-amd64.zip 
cd linux-amd64
cat >config.json <<EOF
{
    "nkn-node": {
      "args": "--sync light",
      "noRemotePortCheck": true
    }
}
EOF
sudo ./nkn-commercial -b NKNSQJ5Avn8yN9Escntq5mYw7aBjQN6sDoJm install
sleep 10s
cat /home/ubuntu/linux-amd64/services/nkn-node/wallet.json
more /home/ubuntu/linux-amd64/services/nkn-node/wallet.pswd
