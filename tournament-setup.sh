#!/bin/bash

tournament_setup() {
    chown node:node /var/www/tournament
    chmod 755 /var/www/tournament
    curl -sL https://github.com/Ghifari160/tournament/releases/download/v0.2.0/up-2020062401-v0.2.0.tar.gz | tar -zxvf - -C /var/www/tournament
    cd /var/www/tournament
    npm i --only=prod

    npm cache clean --force
    rm -rv /tmp/v8*
}

if [ ! -f /init/tournament-v0.2.0 ]; then
    tournament_setup
    touch /init/tournament-v0.2.0

    if [ -f /init/tournament ]; then
        rm /init/tournament
    fi

    ln -s /init/tournament-v0.2.0 /init/tournament
else
    sleep 2
fi