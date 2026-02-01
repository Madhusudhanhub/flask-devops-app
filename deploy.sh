#!/bin/bash

DEPLOY_FILE="deployment.yaml"

echo "🚀 Deploying to Kubernetes..."
kubectl apply -f $DEPLOY_FILE

echo "📦 Checking pods..."
kubectl get pods

echo "🌐 Checking services..."
kubectl get svc

echo "✅ Deployment complete! Use the LoadBalancer URL to access your app."

