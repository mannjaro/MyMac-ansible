#! /bin/bash

ANSIBLE_PATH=~/workspace/settings/mac-ansible

## xcode command line tools
xcode-select --install

## install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install ansible
brew update
brew install ansible

# checkout repo
git clone https://github.com/mannjaro/MyMac-ansible.git ${ANSIBLE_PATH}

# exec ansible
cd ${ANSIBLE_PATH}
ansible-playbook site.yml
