#!/bin/bash

# Linking our app folder into the ubuntu folder of our VM
scp -i ~/.ssh/DevOpsStudents\ \(2\).pem -r ~/Code/NodeJS-AWS-Deploy-Code/app/ ubuntu@52.214.19.30:/home/ubuntu/

# Linking our provision file into the ubuntu folder of our VM 
scp -i ~/.ssh/DevOpsStudents\ \(2\).pem -r ~/Code/NodeJS-AWS-Deploy-Code/environment/provision.sh ubuntu@52.214.19.30:/home/ubuntu/

# When the provision file is executed (./setup.ssh), we will ssh into our VM
ssh -i ~/.ssh/DevOpsStudents\ \(2\).pem ubuntu@52.214.19.30 -i $ ./provision.sh
