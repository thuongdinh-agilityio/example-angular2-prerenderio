#!/bin/bash

# Upgrade system
sudo apt-get update -y
sudo apt-get install nginx -y

# Install nvm & node 4 as default
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
export NVM_DIR="/home/vagrant/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

nvm install 4
nvm use 4
nvm alias default 4

# Install global
npm install --global webpack
npm install --global webpack-dev-server
npm install --global karma-cli
npm install --global protractor