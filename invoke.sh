#!/bin/bash
name= "$1.json"
rep=$2

for d in */ ; do
        cd "$d"
        for ((i=0; i<rep; i++)); do
                wsk -i action invoke r2 --param-file "$name"
        done
        cd ../
done