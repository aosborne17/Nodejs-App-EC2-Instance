# Amazon Web Services Introduction

## What is AWS
- AWS is a cloud service platform, offering compute power, database storage and other functionalities to help businesses
scale and grow

AWS allows for:
- Running application servers in the cloud to host dynamic websites
- Serve global customers with low latency due to databases being placed closer to consumers
- Storing info in multiple DBs such as MongoDB, MySQL etc



## Compute Services

AWS offers a vast array of compute services allowing clients to develop, deploy and run applications all through the cloud,
as well as the ability to scale computing up or down based on the demand


### Lightsail
- Automatically deploys and manages compute, storage and networking capabilities to run applications

### Elastic Compute Cloud
- Virtual Machines in the cloud which you have 

### Lambda
- Serverless technology that allows you to run 

### Elastic Beanstalk



## Storage Services



### Entering our Instance 

1) We first download a file that contains the key which will let us enter our EC2 instance
2) This key will most likely be found in our downloads folder, from git bash we run the following command to enter it
```commandline
cd
cd Downloads
```

3) Once here we will then move the file we downloaded and place it into our .ssh folder by doing the following command
```commandline
mv DevOpsStudents\ \(2\).pem ~/.ssh
```

4) We can now enter our .ssh folder by running the absolute path command
```commandline
cd ~/.ssh
```

5) Now we can run the ssh command which will allow us to enter our EC2 virtual machine
```commandline
ssh -i ~/.ssh/DevOpsStudents\ \(2\).pem ubuntu@52.214.19.30
```
At the end we have added the name of ubuntu OS and our IP address to enter our VM


### Manually Provision An EC2 instance

- create provision.sh script

sudo apt-get nginx 
sudo apt-get install npm
sudo apt-get install nodejs

- install app prerequisites
npm, nginx, nodejs, npm packages, run server

sudo apt-get update --> Run this command before we begin to install programs

npm packages are the dependenices for node js

### Creating A provision.sh file to automate the process
This provision file will contain

```commandline
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
```
Stands for Secure Copy, this command transfers files

### Creating A setup.sh file to run 


```commandline
ssh -i ~/.ssh/DevOpsStudents\ \(2\).pem ubuntu@52.214.19.30
```
This will allow us to enter our VM, similar to vagrant ssh