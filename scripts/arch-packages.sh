#!/bin/sh

set -euo pipefail

paru -Syu --noconfirm

# Check if arch.packages exists
if [ ! -f ./arch.packages ]; then
    echo "Error: arch.packages not found" >&2
    exit 1
fi

grep -v '^#' ./arch.packages | xargs paru -S --noconfirm
