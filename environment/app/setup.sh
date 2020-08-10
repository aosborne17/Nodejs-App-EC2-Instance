#!/bin/bash

# Linking our app folder into the ubuntu folder of our VM
scp -i ~/.ssh/DevOpsStudents\ \(2\).pem -r ~/Code/Nodejs-App-EC2-Instance/app/ ubuntu@54.247.55.44:/home/ubuntu/

# Linking our provision file into the ubuntu folder of our VM 
scp -i ~/.ssh/DevOpsStudents\ \(2\).pem -r ~/Code/Nodejs-App-EC2-Instance/environment/app/provision.sh ubuntu@54.247.55.44:/home/ubuntu/

# When the provision file is executed (./setup.ssh), we will ssh into our VM
ssh -i ~/.ssh/DevOpsStudents\ \(2\).pem ubuntu@54.247.55.44 -i $ ./provision.sh
