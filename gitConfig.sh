#!/bin/bash -ex

#run this script to git config

sudo apt-get install -y git
git config --global user.name "ronildomoura"
git config --global.email "ronildoamoura@gmail.com"
git config --global credential.helper store


#clone the config repo


echo 'Run other Shell config sripts now ...'