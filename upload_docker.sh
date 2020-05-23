#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=dimeji/predictionapi

# Step 2:  
# Authenticate & tag

docker login --username=dimeji

docker tag c5ec625f0c46 dimeji/predictionapi:firsttryingpredictionapi

echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push dimeji/predictionapi
