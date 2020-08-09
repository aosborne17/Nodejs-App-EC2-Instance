#!/bin/bash

# Linking our environment-db into the ubuntu folder of our VM
scp -i ~/.ssh/DevOpsStudents\ \(2\).pem -r ~/Code/Nodejs-App-EC2-Instance/environment/db ubuntu@54.154.0.39:/home/ubuntu/

# Linking our provision file into the ubuntu folder of our VM
scp -i ~/.ssh/DevOpsStudents\ \(2\).pem -r ~/Code/Nodejs-App-EC2-Instance/environment/db/provision.sh ubuntu@54.154.0.39:/home/ubuntu

# When the provision file is executed (./setup.ssh), we will ssh into our VM
ssh -i ~/.ssh/DevOpsStudents\ \(2\).pem ubuntu@54.154.0.39 -i $ ./provision.sh



