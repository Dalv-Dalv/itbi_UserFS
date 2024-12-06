#!/bin/bash

ps -e -o user,command | awk '{print $1,$2}' | while read user pid; do
    echo "Utilizator: $user Comanda: $pid"
done