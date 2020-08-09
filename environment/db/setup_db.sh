#!/bin/bash

# Linking our environment-db into the ubuntu folder of our VM
scp -i ~/.ssh/DevOpsStudents\ \(2\).pem -r ~/Code/Nodejs-App-EC2-Instance/environment/db ubuntu@34.245.144.104:/home/ubuntu/

# Linking our provision file into the ubuntu folder of our VM
scp -i ~/.ssh/DevOpsStudents\ \(2\).pem -r ~/Code/Nodejs-App-EC2-Instance/environment/db/provision.sh ubuntu@34.245.144.104:/home/ubuntu

# When the provision file is executed (./setup.ssh), we will ssh into our VM
ssh -i ~/.ssh/DevOpsStudents\ \(2\).pem ubuntu@34.245.144.104 -i $ ./provision.sh



