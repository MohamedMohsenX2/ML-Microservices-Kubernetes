#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=4servnet/mlapp

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker image tag mlapp $dockerpath
docker login --username 4servnet

# Step 3:
# Push image to a docker repository
docker image push $dockerpath
