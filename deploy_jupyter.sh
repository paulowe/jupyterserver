#!/bin/bash
# Author: Paul Owe
# Date: Aug 15
# Purpose: Automatically set up Jupyter server on EC2

# Update packages
sudo apt-get update

# Install Python3 and Pip
sudo apt-get install python3
sudo apt-get -y install python3-pip

#Install Jupyter and Jupyter server
sudo pip3 install jupyter
sudo pip3 install jupyter_server

#Generate notebook config
jupyter notebook --generate-config

# Set notebook config from prewritten file :)
git clone https://github.com/paulowe/jupyterserver.git
cd .jupyter
rm jupyter_notebook_config.py
mv ~/jupyterserver/jupyter_notebook_config.py .

# Create folder to store Notebooks
mkdir MyNotebooks
cd MyNotebooks

#Start Jupyter server
jupyter notebook
