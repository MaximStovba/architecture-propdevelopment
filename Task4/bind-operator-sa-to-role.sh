#!/bin/bash

# Привязка сервис-аккаунта к роли в namespace operations
kubectl create rolebinding bind-operator-sa \
  --role=pod-reader-operations \
  --serviceaccount=operations:operator-sa \
  -n operations

echo "✅ Сервис-аккаунт operator-sa привязан к роли pod-reader-operations в namespace operations"
