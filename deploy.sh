#!/bin/bash

export NVM_DIR=$HOME/.nvm;
. $NVM_DIR/nvm.sh;

cd /home/ubuntu/first-test-app
git pull origin master
nvm use v18
npm install &&
npm build &&
pm2 del 0
pm2 start run.sh --name first-test-app