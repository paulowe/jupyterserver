#!/bin/bash
# Author: Paul Owe
# Date: Aug 15
# Purpose: Automatically set up Jupyter server on EC2


# Stop if anything fails
#set -ex

# Get anaconda
#wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh

#echo | bash Anaconda3-2019.03-Linux-x86_64.sh

sudo apt-get update

#ssh-keygen -t rsa -P ""

#cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

#ssh localhost

sudo apt-get install python3

sudo apt-get -y install python3-pip

sudo pip3 install jupyter

sudo pip3 install jupyter_server

#cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

jupyter notebook --generate-config


#export PATH=/home/ubuntu/anaconda3/bin:$PATH

#source .bashrc

#jupyter notebook --generate-config

git clone https://github.com/paulowe/jupyterserver.git

cd .jupyter

rm jupyter_notebook_config.py

mv ~/jupyterserver/jupyter_notebook_config.py .

mkdir MyNotebooks

cd MyNotebooks

jupyter notebook
