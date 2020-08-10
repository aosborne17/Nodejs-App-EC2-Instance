# Running A Node JS Application Using Two EC2 Instances

#### Click [HERE](https://github.com/aosborne17/Nodejs-App-EC2-Instance/blob/master/DETAILED-NOTES.md) for more detail on AWS 

## Prerequisites
- Git Bash [Here](https://git-scm.com/downloads)

As you can see the prerequisites for this project are small here, this details the beauty of AWS and Cloud Computing.
It minimises any need for local installations

## Creating The App EC2 instance
- Providing you have created an AWS account, go to the dashboard and click running instances
- From here you will have the ability to choose what machine you would like as well as the configurations
 
![Running An Instance](images/running-an-instance.png)


## Creating The DB EC2 instance And Linking The Two

- The DB instance would be created 




## Cloning The Repository
- Download and extract the zip file and move it to a safe file location


## Entering Our Cloud Machine and Running Our Application

- The zip folder would have most likely gone to your downloads folder

- Open git bash and locate to the folder where you have saved this cloned repository



THe following command will run a provision script that would then run the DB Instance
```commandline
./setup_db.sh
```

This script will then run our APP Instance
```commandline
./setup.sh
```

We can go to one of the three URLs listed below and we should have the application running
```commandline
IP-number/
IP-number/fibonnaci/8
IP-number/posts
```

For the posts web address we would hope to see something like this:

![Posts Running](images/posts-running.png)