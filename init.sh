#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Init common things for the experiments 
docker network create experiments

# Create common folders
mkdir -p "$SCRIPT_DIR/services"
mkdir -p "$SCRIPT_DIR/experiments"
