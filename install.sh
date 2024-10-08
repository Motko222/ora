#!/bin/bash

path=$(cd -- $(dirname -- "${BASH_SOURCE[0]}") && pwd) 
folder=$(echo $path | awk -F/ '{print $NF}')

cd $path
wget https://raw.githubusercontent.com/cryptoforto/Ora-Node/main/ora.sh
bash ora.sh
