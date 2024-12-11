#!/bin/bash

function ProcsForUser {
    local user=$1

    id $user &> /dev/null
    if [ $? != 0 ]; then
        echo "user doesnt exist"
        return 1
    fi

    if ! who | grep -q "^$user "; then
        echo "user is not active"
        return 2
    fi
    
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

ProcsForUser $1