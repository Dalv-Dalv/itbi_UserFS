#!/bin/bash

function ProcsForUser {
    local user=$1

    ps -u $user -o command | awk '{print $1}' | while read cmd; do
        echo "Utilizator: $user Comanda: $cmd"

        dir=./radacina/$user
        mkdir -p $dir
        echo $cmd >> $dir/procs
    done


    echo "SFARSIT LISTA"

    return 0
}


mkdir -p ./radacina 


ProcsForUser jojo