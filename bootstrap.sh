#!/bin/bash

# minimal base line apps for running ansible
apt -qq update && apt install git, python3, wget, gpg

# install ansible
UBUNTU_CODENAME=jammy #use the ubuntu code name
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | tee /etc/apt/sources.list.d/ansible.list
apt update && sudo apt install ansible

# run ansible
ansible-pull -U https://github.com/zyzyx159/bootstrap.git -i "$(hostname --short),"
