#!/bin/bash

# Update and upgrade
sudo apt update -y && sudo apt upgrade -y

# Install Python and tools
sudo apt install -y python3 python3-pip python3-venv python-is-python3 nano vim

# Create virtual environment and install Flask
python3 -m venv /opt/flask_env
source /opt/flask_env/bin/activate
pip install flask

# Run Flask app using the virtual environment
nohup /opt/flask_env/bin/python /vagrant/hello.py > /vagrant/flask.log 2>&1 &

