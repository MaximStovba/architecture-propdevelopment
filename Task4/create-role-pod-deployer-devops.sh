#!/bin/bash

# Создание роли pod-deployer-devops
cat <<EOF | kubectl apply -f -
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: pod-deployer-devops
  namespace: devops
rules:
- apiGroups: [""]
  resources: ["pods"]
  verbs: ["create", "get", "list", "watch", "update", "delete"]
EOF

echo "✅ Роль pod-deployer-devops создана в namespace devops"
