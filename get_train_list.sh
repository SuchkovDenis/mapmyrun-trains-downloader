#!/bin/bash

while getopts c: flag

do
    case "${flag}" in
        c) cookies=${OPTARG};;
    esac
done

curl -H "${cookies}" "https://www.mapmyrun.com/internal/allWorkouts/" | \
python3 -c "import sys, json; print(*list(map(lambda x: x['_links']['self'][0]['id'], json.load(sys.stdin))), sep='\n')" > allWorkouts.txt
