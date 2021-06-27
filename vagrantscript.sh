#!/usr/bin/env bash

cd /app/

sudo apt update
sudo apt install -y python3-venv python3-pip
python3 -m venv venv
source venv/bin/activate
pip install Flask

flask run --host=0.0.0.0