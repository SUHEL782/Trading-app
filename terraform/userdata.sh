#!/bin/bash
apt update -y
apt install -y curl git

curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs


cd /home/ubuntu
git clone https://github.com/SUHEL782/Trading-app.git


cd Trading-app/app

npm install

# Start app...............
nohup node server.js > /var/log/app.log 2>&1 &
