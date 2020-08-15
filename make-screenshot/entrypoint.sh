#!/usr/bin/env bash

PARSED_ARGUMENTS=$(getopt --long 'width:,height:,depth:' -n 'entrypoint.sh' '' "$@")
VALID_ARGUMENTS=$?

if [ $VALID_ARGUMENTS -ne 0 ]; then
    echo 'Terminating...' >&2
    exit 1
fi

eval set -- "$PARSED_ARGUMENTS"

while true; do
    case "$1" in
        --width)
            screen_width="$2"
            shift 2
            ;;
        --height)
            screen_height="$2"
            shift 2
            ;;
        --depth)
            screen_depth="$2"
            shift 2
            ;;
        --)
            shift
            break
            ;;
        *)
            echo "Unexpected option: $1"
            exit 1
            ;;
    esac
done

xvfb-run \
    --server-args="-screen 0 ${screen_width}x${screen_height}x${screen_depth}" \
    /make-screenshot "$@"
