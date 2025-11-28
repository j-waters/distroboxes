# Justfile for building and testing distrobox containers

# Default recipe: show available recipes
default:
    @just --list

# Build the arch container
build arch:
    #!/usr/bin/env bash
    set -euo pipefail
    podman build -f ContainerFiles/arch -t distrobox-arch:latest .

# Test building all containers
test:
    @just build-arch

