#!/usr/bin/env bash

# script to begin the docker build process


gpu=false
mem=4g

while getopts "gm:" opt; do
    case ${opt} in
        g)
            gpu=true
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

if [[ ${gpu} == true ]]; then
    docker build \
        -f $HOME/hufs/machinelearning_hufs/docker/Dockerfile \
        -m ${mem} \
        -t machinelearning_hufs ../
else
    docker build \
        -f $HOME/hufs/machinelearning_hufs/docker/Dockerfile \
        -m ${mem} \
        -t machinelearning_hufs ../
fi