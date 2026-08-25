#!/bin/bash

# TODO your deploy script implementation...test

set -e pipefail
cd ~/NetflixMovieCatalog
pkill -f "app.py
nohup ./app.py > output.log 2>&1 &"
