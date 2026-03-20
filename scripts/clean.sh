#!/bin/bash

cd "$(dirname "$0")/.."

echo "🧹 Cleaning all resources..."

kubectl delete -f k8s/autoscaling/ --ignore-not-found
kubectl delete -f k8s/ingress/ --ignore-not-found

kubectl delete -f k8s/base/flask --ignore-not-found
kubectl delete -f k8s/base/redis --ignore-not-found
kubectl delete -f k8s/base/music --ignore-not-found

kubectl delete -f k8s/storage/ --ignore-not-found

echo "✅ Clean complete!"
