#!/bin/bash
# alqo masternode installer 
# rowlando 20180203
# v 1.0
# Updates:
#
## prepare VPS
# ------------
echo "Preparing...."
apt-get update
apt-add-repository ppa:ansible/ansible -y
apt-get update -y
apt-get install ansible facter python-pip -y
pip install passlib

echo "Preparation done"
echo "Starting the installer"
## Run ansible installer
# ----------------------
ansible-playbook alqo.yml $@
