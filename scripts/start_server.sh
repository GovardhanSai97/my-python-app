#!/bin/bash
cd /home/ubuntu/my-python-app
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 577638362176.dkr.ecr.us-east-2.amazonaws.com
# docker compose up -d
docker run 577638362176.dkr.ecr.us-east-2.amazonaws.com/my-python-app:latest

