#!/bin/bash

# don't forget to make the script executable
# chmod +x run.sh

# Make sure a prompt is passed
if [ -z "$1" ]; then
  echo "Usage: ./run.sh \"Your prompt here\""
  exit 1
fi

python cli.py "$1"
