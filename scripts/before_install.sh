if [ -d /home/ubuntu/my-python-app ]; then
    rm -rf /home/ubuntu/my-python-app
fi
sudo apt-get update
sudo apt-get install -y python3 python3-pip docker.io docker-compose
sudo sytemctl start docker
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 577638362176.dkr.ecr.us-east-2.amazonaws.com
sudo systemctl enable docker#!/bin/bash
if [ -d /home/ubuntu/my-python-app ]; then
    rm -rf /home/ubuntu/my-python-app
fi
