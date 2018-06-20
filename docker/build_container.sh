#!/usr/bin/env bash

# script to begin the docker build process


win=false
mem=4g

while getopts "wm:" opt; do
    case ${opt} in
        w)
            win=true
            ;;
        m)
            mem=${OPTARG}
            ;;
        \?)
            echo "Wrong flags"
            exit 1
            ;;
    esac
done

if [[ ${win} == true ]]; then
    docker build \
        -f WIN/Dockerfile \
        -m ${mem} \
        -t machinelearning_instruction ../
else
    docker build \
        -f UNIX/Dockerfile \
        -m ${mem} \
        -t machinelearning_instruction ../
fi
