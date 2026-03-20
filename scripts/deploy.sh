#!/bin/bash
cd "$(dirname "$0")/.."

echo "🚀 Starting deployment..."

echo "📦 Deploy storage..."
kubectl apply -f k8s/storage/

echo "📦 Deploy base services..."
kubectl apply -f k8s/base/

echo "🌐 Deploy ingress..."
kubectl apply -f k8s/ingress/

echo "📈 Deploy autoscaling..."
kubectl apply -f k8s/autoscaling/

echo "⏳ Waiting for pods..."
kubectl get pods

echo "✅ Deployment complete!"
