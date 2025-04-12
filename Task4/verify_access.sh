#!/bin/bash

echo "🔍 Проверка доступа operator-sa в namespace operations..."
kubectl auth can-i list pods --as=system:serviceaccount:operations:operator-sa -n operations
kubectl auth can-i create pods --as=system:serviceaccount:operations:operator-sa -n operations
kubectl auth can-i delete pods --as=system:serviceaccount:operations:operator-sa -n operations

echo -e "\n🔍 Проверка доступа operator-sa в namespace devops..."
kubectl auth can-i list pods --as=system:serviceaccount:operations:operator-sa -n devops

echo -e "\n🔍 Проверка доступа devops-sa в namespace devops..."
kubectl auth can-i create pods --as=system:serviceaccount:devops:devops-sa -n devops
kubectl auth can-i get pods --as=system:serviceaccount:devops:devops-sa -n devops
kubectl auth can-i delete pods --as=system:serviceaccount:devops:devops-sa -n devops
kubectl auth can-i update pods --as=system:serviceaccount:devops:devops-sa -n devops

echo -e "\n🔍 Проверка доступа devops-sa в namespace operations..."
kubectl auth can-i get pods --as=system:serviceaccount:devops:devops-sa -n operations
