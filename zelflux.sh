#!/bin/bash

# Open up required ports
sudo ufw allow 16126/tcp
sudo ufw allow 16127/tcp
sudo ufw allow 16128/tcp
sudo ufw allow 27017/tcp      # default mongodb port

# Install Mongodb, enable, and start service
sudo apt update
sudo apt install mongodb -y

# Install Nodejs
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# Clone ZelFlux repo and start ZelFlux
git clone https://github.com/zelcash/zelflux zelflux && cd zelflux
npm start

