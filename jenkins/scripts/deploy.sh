#!/bin/bash

# Set the Kubernetes context if needed
# kubectl config use-context your-context

# Deploy app1
kubectl apply -f ../k8s/app1-deployment.yaml
kubectl apply -f ../k8s/app1-service.yaml

# Deploy app2
kubectl apply -f ../k8s/app2-deployment.yaml
kubectl apply -f ../k8s/app2-service.yaml

# Apply ingress configuration
kubectl apply -f ../k8s/ingress.yaml

echo "Deployment completed successfully."