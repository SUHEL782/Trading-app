#!/bin/bash
yum update -y
curl -sL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs git
cd /home/ec2-user
git clone https://github.com/YOUR_REPO_NAME.git app
cd app/app
npm install
nohup node server.js > /var/log/app.log 2>&1 &
