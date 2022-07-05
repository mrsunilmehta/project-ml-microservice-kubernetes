#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mrsunilmehta/udacitysunil

# Step 2:  
# Authenticate & tag
docker login -u mrsunilmehta
docker image tag udacityproject4 $dockerpath
echo "Sunil Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
