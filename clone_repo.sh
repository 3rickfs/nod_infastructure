#!/bin/bash

eval "$(ssh-agent -s)"
#ssh-agent bash
echo $1 | ssh-add /home/ubuntu/.ssh/id_ed25519
#Adding to known hosts github DNS
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
#cloning by this side to confirm my assumption that I need to call the agent in /.bashrc
mkdir /home/ubuntu/authfacerecoapi 
cd /home/ubuntu/authfacerecoapi 
git clone git@github.com:prel2014/server_faces.git 
echo "Git clone succeded"
echo "Create folder for saving incoming images"
mkdir /home/ubuntu/authfacerecoapi/server_faces/uploads
