#!/bin/bash

if [ "sh" != "$1" ]; then
    exec phpmd "$@"
else
    exec "$@"
fi