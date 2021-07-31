#!/bin/bash

while getopts c:f: flag

do
    case "${flag}" in
        c) cookies=${OPTARG};;
        f) file=${OPTARG};;
    esac
done

mkdir -p out

cat $file | while read line 
do
   curl -H "${cookies}" "https://www.mapmyrun.com/workout/export/${line}/tcx" --output "out/${line}.tcx"
done
