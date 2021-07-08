#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path

dockerpath=networkingcat/myapp

# Step 2
# Run the Docker Hub container with kubernetes

kubectl run forward4 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods

echo 'List Pods'
kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward forward4 8000:80