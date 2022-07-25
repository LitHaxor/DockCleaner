#!/usr/bin/env sh

while :; do 
    echo '** DOCKER CLEANER Starting **'
    ./cleanup.sh
    echo '** DOCKER CLEANER Finished **'

    echo "** Will restart after: ${FREQUENCY} seconds"
    sleep "$FREQUENCY"
done