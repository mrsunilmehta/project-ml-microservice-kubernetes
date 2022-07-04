#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="mrsunilmehta/udacitysunil:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacitymehta --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacitymehta 8080:80

#Sunil Mehta Logging
#kubectl logs `kubectl get pods -o=name`
#kubectl logs --selector app=udacitymehta