#!usr/bin/env bash

#$DCIST_ROOT
#$PD_ROOT
#$PT_ROOT


alias dcr='cd $DCIST_ROOT'

function dcg() {
  dcr
  echo "Generating $1..."
  ./dc generate $1 --verbose --host-networking
}

function cdeb() {
  dcr
  dcg
  ./cdeb_start
}

function dcbuild() {
  cd dcr/dcist_ws && catkin-docker build
  cd dcr/catkin_ws && catkin-docker build
}
