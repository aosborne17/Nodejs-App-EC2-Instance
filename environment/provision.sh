#!/bin/bash

# update

sudo apt-get update -y

sudo apt-get upgrade -y


# Installing nginx
sudo apt-get install nginx -y

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# Installing Node and npm
sudo apt-get install node js
sudo apt-get install npm -y

# We need to go into our app folder before we run sudo npm install, this is because this is where our package.json file is found
# this allows npm to install the dependencies
cd /home/ubuntu/app

#Looks for the package.json file and uses that to install all the dependencies necessary
# the node equivalent of pip install requirements.txt
sudo npm install

sudo npm install pm2 -g

#pm2 alllows you to manage your application

pm2 start app.js



