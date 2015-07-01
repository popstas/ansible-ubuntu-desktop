#!/bin/sh
sudo apt-get install -y git python-pip python-dev
sudo pip install ansible
git clone https://github.com/popstas/ansible-ubuntu-desktop.git
cd ansible-ubuntu-desktop
ansible-playbook install.yml --sudo -K -c local -i hosts
