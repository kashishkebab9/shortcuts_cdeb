#!/usr/bin/env bash

#shortcuts for your local machine to interact with the cdeb-machine 
alias wifi='nmcli connection up mrsl_perch'
# modify this to take u directly to whereever the dcist-virtual-testbed dir is on you user account on cdeb
alias dcist='ssh -XYt kashish@cdeb-Thelio-Major.local "cd ~/projects/dcist-virtual-testbed ; bash --login"'

function cdeb() {
  wifi
  if [ $# -eq 0 ]; then
    >&2 echo "No arguments provided, what is your username on CDEB?"
    read cdeb_name
    ssh -XYt $cdeb_name@cdeb-Thelio-Major.local 
  else
    ssh -XYt $1@cdeb-Thelio-Major.local
  fi
} 


