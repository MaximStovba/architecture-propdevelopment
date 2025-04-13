#!/bin/bash

# Создание роли pod-reader-operations
cat <<EOF | kubectl apply -f -
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: pod-reader-operations
  namespace: operations
rules:
- apiGroups: [""]
  resources: ["pods"]
  verbs: ["get", "list", "watch"]
EOF

echo "✅ Роль pod-reader-operations создана в namespace operations"
