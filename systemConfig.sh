#!/bin/bash -ex

#unbuntu 16.04 LTS config

sudo apt update
sudo apt upgrade -y

#install some packages
sudo apt-get install -y git curl htop

#setup new terminal themes in bashrc
echo '# Enable tab completion' >> ~/.bashrc
echo 'source ~/git-completion.bash' >> ~/.bashrc

echo '# colors!' >> ~/.bashrc
echo 'green="\[\033[0;32m\]"' >> ~/.bashrc
echo 'blue="\[\033[0;34m\]"' >> ~/.bashrc
echo 'purple="\[\033[0;35m\]"' >> ~/.bashrc
echo 'reset="\[\033[0m\]"' >> ~/.bashrc

echo '# Change command prompt' >> ~/.bashrc
echo 'source ~/git-prompt.sh' >> ~/.bashrc
echo 'export GIT_PS1_SHOWDIRTYSTATE=1' >> ~/.bashrc
echo "# '\u' adds the name of the current user to the promp'" >> ~/.bashrc
echo "# '\$(__git_ps1)' adds git-related stuff" >> ~/.bashrc
echo "# '\W' adds the name of the current director" >> ~/.bashrc
echo 'export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"' >> ~/.bashrc


#get the latest conda 
curl -0 https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3*.sh -b
rm Miniconda3*.sh

echo -e '\n# Miniconda3\nexport PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

echo 'Conda installed! Go in the projects and creat virtual env for yml projects'

