#!/bin/bash

tournament_setup() {
    chown node:node /var/www/tournament
    chmod 755 /var/www/tournament
    curl -sL https://github.com/Ghifari160/tournament/releases/download/v0.3.1/tournament-v0.3.1.tar.gz | tar -zxvf - -C /var/www/tournament --overwrite
    cd /var/www/tournament
    npm i --only=prod

    npm cache clean --force
    rm -rv /tmp/v8*
}

if [ ! -f /init/tournament-v0.3.1 ]; then
    tournament_setup
    touch /init/tournament-v0.3.1

    if [ -f /init/tournament ]; then
        rm /init/tournament
    fi

    ln -s /init/tournament-v0.3.1 /init/tournament
else
    sleep 2
fi