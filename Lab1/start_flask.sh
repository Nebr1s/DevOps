#!/bin/bash

# Update and Upgrade the system
sudo apt update -y && sudo apt upgrade -y

# Install Python3 and pip
sudo apt install -y nano vim python-is-python3 \ python3-pip
sudo apt install -y nano vim python3 \ python3-venv

# Create and activate a virtual environment
python -m venv.my_venv
source .my_venv/bin/activate

# Install Flask
sudo apt install python3-flask

# Run a simple Flask app (make sure hello.py exists in the same directory)
flask --app hello run --host=0.0.0.0