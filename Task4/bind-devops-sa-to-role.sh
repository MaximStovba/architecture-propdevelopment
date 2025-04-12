#!/bin/bash

# Привязка сервис-аккаунта к роли в namespace devops
kubectl create rolebinding bind-devops-sa \
  --role=pod-deployer-devops \
  --serviceaccount=devops:devops-sa \
  -n devops

echo "✅ Сервис-аккаунт devops-sa привязан к роли pod-deployer-devops в namespace devops"
