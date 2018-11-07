#!/bin/bash

function magic(){
for d in */; do
    echo "Removing node_modules in $d"
    cd $d
    rm -rf node_modules
    echo "Running npm isntall"
    npm install
    cd ..
done
}
while true; do
    read -p "WARNING: This script will remove /node_modules and rum npm-install in each folder. Proceed? (y/n) " yn
    case $yn in
        [Yy]* ) magic ; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
