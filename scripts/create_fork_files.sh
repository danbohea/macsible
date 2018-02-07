#!/bin/bash

DIR="$(dirname "$0")"

. "$DIR/common.sh"

# Change to project root directory
cd "$DIR"
cd ../

# Copy and rename files from ./src:
if [ $TRAVIS ]; then
  setStatusMessage "Creating ./config.yml if absent"
  cp src/config.example.yml config.yml
  setStatusMessage "Creating ./config.local.yml if absent"
  cp src/config.example.yml config.local.yml
  setStatusMessage "Creating ./mac-custom.yml if absent"
  cp src/mac-custom.example.yml mac-custom.yml
  setStatusMessage "Creating ./requirements.yml if absent"
  cp src/requirements.example.yml requirements.yml
else
  setStatusMessage "Creating ./config.yml if absent"
  cp -n src/config.example.yml config.yml
  setStatusMessage "Creating ./config.local.yml if absent"
  cp -n src/config.example.yml config.local.yml
  setStatusMessage "Creating ./mac-custom.yml if absent"
  cp -n src/mac-custom.example.yml mac-custom.yml
  setStatusMessage "Creating ./requirements.yml if absent"
  cp -n src/requirements.example.yml requirements.yml
fi
