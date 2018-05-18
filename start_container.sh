#!/usr/bin/env bash

port=8880

while getopts "p:" opt; do
    case ${opt} in
        p)
            port=${OPTARG}
            ;;
        \?)
            echo "Wrong flags"
            exit 1
            ;;
    esac
done

# cannot link all the way at kaldi root directory
docker run -it --rm -p $port:$port \
    -v `pwd`/egs:$HOME/hufs/machinelearning_hUFS/egs \
machinelearning_hufs