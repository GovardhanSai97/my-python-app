if [ -d /home/ubuntu/my-python-app ]; then
    rm -rf /home/ubuntu/my-python-app
fi
sudo apt-get update
sudo apt-get install -y python3 python3-pip docker.io docker-compose
sudo sytemctl start docker
if ! [ -x "$(command -v aws)" ]; then
    echo "AWS CLI not installed. Installing now..."
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    rm -rf awscliv2.zip aws/
    echo "AWS CLI installed successfully."
else
    echo "AWS CLI is already installed."
fi
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 577638362176.dkr.ecr.us-east-2.amazonaws.com
docker pull 577638362176.dkr.ecr.us-east-2.amazonaws.com/my-python-app:latest
sudo systemctl enable docker
# if [ -d /home/ubuntu/my-python-app ]; then
#     rm -rf /home/ubuntu/my-python-app
# fi
