#!/bin/bash

echo "Lista de utilizatori si procesele lor"

mkdir -p ./radacina 

ps -e -o user,command | awk '{print $1,$2}' | while read user cmd; do
    echo "Utilizator: $user Comanda: $cmd"

    dir=./radacina/$user

    mkdir -p $dir

    echo $cmd >> $dir/procs
done


echo "SFARSIT LISTA"