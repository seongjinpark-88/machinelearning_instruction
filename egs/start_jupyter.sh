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

jupyter notebook --port $port --ip 0.0.0.0 --no-browser --allow-root
