#!/bin/bash

# update

sudo apt-get update -y

sudo apt-get upgrade -y


# Installing nginx
sudo apt-get install nginx -y

# Adding Reverse Proxy Configuration 



sudo unlink /etc/nginx/sites-enabled/default
cd /etc/nginx/sites-available
sudo touch reverse-proxy.conf
sudo chmod 666 reverse-proxy.conf
echo "server{
  listen 80;
  location / {
      proxy_pass http://52.51.162.218/:3000;
  }
}" >> reverse-proxy.conf
sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
sudo service nginx restart




# cd /etc/nginx/sites-available
# sudo chmod 666 default
# echo "server{
#  listen 80;
#  location / {
#      proxy_pass http://52.51.162.218/:3000/;
#  }
#}" > default

#sudo service nginx restart


# sudo nginx -t
# sudo systemctl restart nginx


curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# Installing Node and npm
sudo apt-get install nodejs -y
sudo apt-get install npm -y

# We need to go into our app folder before we run sudo npm install, this is because this is where our package.json file is found
# this allows npm to install the dependencies
cd /home/ubuntu/app

#Looks for the package.json file and uses that to install all the dependencies necessary
# the node equivalent of pip install requirements.txt
sudo npm install

sudo npm install pm2 -g

#pm2 allows you to manage your application

pm2 start app.js



