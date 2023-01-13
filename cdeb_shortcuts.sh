#!/usr/bin/env bash
# this document lives in the cdeb machine at /usr/local/bin/
# we could make make a symlink to this script
# 1. determine what is your dcist working directory
# 2. base all environment variables off of that 

lines=$(find . | grep ".upenn_cuts")
echo lines
if [ $lines -eq 0 ]; then
  echo "There are no instances of .upenn_cuts on your machine! Are you sure you ran setup_shortcuts.sh!"
fi

if [ $lines -eq 1 ]; then
  echo "Found .upenn_cuts! Setting environment_variable..."
fi


