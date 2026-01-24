#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data/options.json

USERNAME=$(bashio::config 'username')
PASSWORD=$(bashio::config 'password')

echo "Username is: ${USERNAME}"

python3 copyparty-sfx.py -a ${USERNAME}:${PASSWORD} -v ./ha/::rwmda,${USERNAME}