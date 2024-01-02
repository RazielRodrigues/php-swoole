#!/bin/bash

while true; do
    inotifywait -r -e modify,move,create,delete /var/www
    echo "Restarting Swoole server..."
    kill -USR1 1  # Replace with your Swoole server process ID
done
