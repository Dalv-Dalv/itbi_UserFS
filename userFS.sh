#!/bin/bash

<<<<<<< HEAD
ps -e -o user,command | awk '{print $1,$2}' | while read user pid; do
    echo "Utilizator: $user Comanda: $pid"
    if [ "$user" = "root"]; then
    echo "ADMIN USER"
    fi
done
=======
echo "Lista de utilizatori si procesele lor"

mkdir -p ./radacina 

ps -e -o user,command | awk '{print $1,$2}' | while read user cmd; do
    echo "Utilizator: $user Comanda: $cmd"

    dir=./radacina/$user

    mkdir -p $dir

    echo $cmd >> $dir/procs
done


echo "SFARSIT LISTA"
>>>>>>> refs/remotes/origin/main
