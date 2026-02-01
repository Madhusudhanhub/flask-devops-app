#!/bin/bash

# Variables
DOCKER_USER="madhusudhan143"
IMAGE_NAME="demo-app"
TAG="latest"

echo "🔨 Building Docker image..."
sudo docker build -t $DOCKER_USER/$IMAGE_NAME:$TAG .

echo "🏷️ Tagging image..."
sudo docker tag $DOCKER_USER/$IMAGE_NAME:$TAG $DOCKER_USER/$IMAGE_NAME:$TAG

echo " Docker Hub login..."
sudo docker login

echo "📤 Pushing image to DockerHub..."
sudo docker push $DOCKER_USER/$IMAGE_NAME:$TAG

echo "✅ Build and push complete!"

