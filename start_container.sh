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
docker run -it --rm -p $port:$port -p 6006:6006\
    -v `pwd`/egs:/scratch/machinelearning_instruction/egs \
machinelearning_instruction