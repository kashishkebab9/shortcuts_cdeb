#!/usr/bin/env bash

echo "This script is used to setup the shortcuts on the CDE-B machine"
echo "What is your username on the CDE-B Machine?"
read cdeb_username
echo "Where is your dcist-virtual-testbed dir?"
read input_path
string_dcist='dcist-virtual-testbed'

if [[ ${input_path} != *"$string_dcist"* ]];then
  echo "Adding $string_dcist to $input_path"
  DCIST_WORKING_DIR="$input_path/$string_dcist"
else
  DCIST_WORKING_DIR=$input_path
fi

echo "Adding .cuts file to $DCIST_WORKING_DIR"
ssh $cdeb_username@cdeb-Thelio-Major.local "touch $DCIST_WORKING_DIR/.cuts"

