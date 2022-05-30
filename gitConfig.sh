#!/bin/bash -ex

#run this script to git config

sudo apt-get install -y git
git config --global user.name "rp"
git config --global user.email "rpcom"
git config --global credential.helper store


#clone the config repo
git clone https://github.com/ronildomoura/unbuntuConfig.git

cd unbuntuConfig

echo 'Run other scripts in main directory ....'
