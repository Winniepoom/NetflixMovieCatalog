#!/bin/bash

# TODO your deploy script implementation...test

  set -e -o pipefail

  cd "$HOME/NetflixMovieCatalog"

  pkill -f '[p]ython.*app.py' || true

  nohup ./venv/bin/python app.py > output.log 2>&1 < /dev/null &
