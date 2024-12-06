#!/bin/bash

echo "Lista de utilizatori si procesele lor"

ps -e -o user,command | awk '{print $1,$2}' | while read user pid; do
    echo "Utilizator: $user Comanda: $pid"
    if [ "$user" = "root"]; then
    echo "ADMIN USER"
    fi
done


echo "SFARSIT LISTA"