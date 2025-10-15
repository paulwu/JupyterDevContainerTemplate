#!/bin/bash

# This script helps VS Code Dev Containers work with Docker in WSL
# Make sure Docker is running in WSL
if ! docker info > /dev/null 2>&1; then
    echo "Docker is not running in WSL. Please start Docker service."
    echo "You can start it with: sudo service docker start"
    exit 1
fi

echo "Docker is running in WSL"
echo "Docker version: $(docker --version)"
echo "Ready for dev container operations"