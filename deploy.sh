#!/bin/bash
  APP_DIR=/home/ubuntu/NetflixMovieCatalog
# TODO your deploy script implementation...test

  set -e -o pipefail

  git -C "$APP_DIR" fetch origin main
  git -C "$APP_DIR" reset --hard origin/main

  cd "$HOME/NetflixMovieCatalog"

  sudo systemctl restart netflix.service
  sudo systemctl is-active --quiet netflix.service
