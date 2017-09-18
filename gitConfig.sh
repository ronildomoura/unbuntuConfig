#!/bin/bash -ex

#run this script to git config

sudo apt-get install -y git
git config --global user.name "ronildomoura"
git config --global user.email "ronildoamoura@gmail.com"
git config --global credential.helper store


#clone the config repo
git clone https://github.com/ronildomoura/unbuntuConfig.git

echo 'Run other scripts in main directory ....'