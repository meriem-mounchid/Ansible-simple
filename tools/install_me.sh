#!/bin/sh

# Install Docker if not installed
if [ ! "$(command -v docker &> /dev/null)" ]
then
    echo "* * * * Installing Docker * * * *"
    sudo apt install docker.io -y
    sudo usermod -aG docker misaki
    # newgrp docker
else
    echo "* * * * Docker already installed * * * *"
fi

# Install Ansible if not installed
if [ ! "$(command -v ansible &> /dev/null)" ]
then
    echo "Installing Ansible"
    # sudo apt-get update
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get install -y ansible
    sudo apt install python3 -y
    # sudo apt install python3-pip -y
    sudo apt install python-pip -y
    sudo pip3 install boto boto3
    sudo pip install boto boto3
    # sudo apt install python
    # pip3 install botocore

    # sudo apt install python3-pip -y
    # sudo pip install --upgrade pip
    # sudo pip install --upgrade ansible

    # sudo pip install boto boto3
    # pip list boto | grep boto
else
    echo "Ansible already installed"
fi

# boto (2.49.0)
# boto3 (1.17.112)
# botocore (1.20.112)

# Connect to cloud via ssh
# ssh -i misa.cer ubuntu@ec2-13-42-31-70.eu-west-2.compute.amazonaws.com



##### TEST #####