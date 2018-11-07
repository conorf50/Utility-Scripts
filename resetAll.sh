#!/bin/bash

function magic(){
for d in */; do
    echo "Removing local changes in $d"
    cd $d
    git reset --hard
    cd ..
done
}
while true; do
    read -p "WARNING: This script will remove all local changes in each folder. Make sure you have committed everything! Proceed? (y/n) " yn
    case $yn in
        [Yy]* ) magic ; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

