#!/bin/bash

set -e

# 1. Создаём namespaces
kubectl create namespace operations || true
kubectl create namespace devops || true

# 2. Создание сервис-аккаунтов
kubectl create serviceaccount operator-sa -n operations || true
kubectl create serviceaccount devops-sa -n devops || true

echo "✅ Готово!"
