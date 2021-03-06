#!/bin/bash

# Linking our environment-db into the ubuntu folder of our VM
scp -i ~/.ssh/DevOpsStudents\ \(2\).pem -r ~/Code/Nodejs-App-EC2-Instance/environment/db ubuntu@52.214.160.92:/home/ubuntu/

# Linking our provision file into the ubuntu folder of our VM
# scp -i ~/.ssh/DevOpsStudents\ \(2\).pem -r ~/Code/Nodejs-App-EC2-Instance/environment/db ubuntu@52.214.160.92:/home/ubuntu

# When the provision file is executed (./setup.ssh), we will ssh into our VM
# the second part means after we ssh in we will then go into our
ssh -i ~/.ssh/DevOpsStudents\ \(2\).pem ubuntu@52.214.160.92 -i $ ./db/provision.sh



