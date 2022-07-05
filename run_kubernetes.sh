#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="mrsunilmehta/sunilmehta:latest"

# Step 2
# Run the Docker Hub container with kubernetes
docker login -u mrsunilmehta
kubectl run udacitymehta --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/udacitymehta 8080:80

#Sunil Mehta Logging
#kubectl logs `kubectl get pods -o=name`
#kubectl logs --selector app=udacitymehta