#!/bin/bash

# TODO your deploy script implementation...test

  set -e -o pipefail

  git fetch origin main
  git reset --hard origin/main

  cd "$HOME/NetflixMovieCatalog"

  sudo systemctl restart netflix.service
  sudo systemctl is-active --quiet netflix.service
