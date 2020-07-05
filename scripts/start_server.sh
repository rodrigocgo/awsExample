#!/bin/bash

cd /home/ubuntu

git clone https://github.com/rodrigocgo/awsExample.git

cd awsExample

sudo cp etc/rc.local /etc/

VIRTUALENV=/home/ubuntu/venv

pushd $(dirname "$0")

source $VIRTUALENV/bin/activat

export FLASK_APP=/home/ubuntu/awsExample/app.py

flask run --host=0.0.0.0 --port 8080 >/dev/null 2>&1 &


