#!/bin/bash

# have to run these as root
sudo apt-get update
sudo apt-get install apache2 mariadb-server git -y

# run this as normal user
ssh-keygen -t rsa -b 4096 "andrewsalveson@gmail.com"
# then some user interaction will have to happen here

# start ssh-agent in background
eval $"$(ssh-agent -s)"
# add RSA -- should have used the default path above
ssh-add ~/.ssh/id_rsa
