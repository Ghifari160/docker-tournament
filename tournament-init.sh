#!/bin/bash

while : ; do
    [[ -f "/init/tournament" ]] && break
    echo "Waiting for Tournament installation"
    sleep 5
done

cd /var/www/tournament
npm run start