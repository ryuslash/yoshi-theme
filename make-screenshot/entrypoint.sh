#!/usr/bin/env bash

xvfb-run --server-args="-screen 0 896x576x24" /make-screenshot "$@"
