#!/bin/bash

cd "$(dirname "$0")/.."

echo "📊 Pods:"
kubectl get pods -o wide

echo ""
echo "🌐 Services:"
kubectl get svc

echo ""
echo "🚪 Ingress:"
kubectl get ingress

echo ""
echo "📈 HPA:"
kubectl get hpa

echo ""
echo "💾 PVC:"
kubectl get pvc



echo ""
echo "🌍 Access URLs:"
echo "Flask: http://jiangnan10.online"
echo "Music: http://music.jiangnan10.online"
