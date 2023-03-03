#!/bin/bash
# This script accepts a string as a git commit message 
# and runs the git commit command

if ["$1" = ""]; then
    echo "Please use gitc \"message here\""
    exit 
fi
git commit -m "$1"
