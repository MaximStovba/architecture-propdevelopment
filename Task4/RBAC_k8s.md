| Роль                       | Права роли                                                | Группы пользователей | Уровень доступа |
| -------------------------- | --------------------------------------------------------- | -------------------- | --------------- |
| pod-reader-operations      | get, list, watch для ресурса pods в неймспейсе operations | Операторы            | Неймспейс       |
| pod-deployer-devops        | create, get, list, watch, update, delete для ресурса pods в неймспейсе devops | Инженеры DevOps | Неймспейс |
| configmap-reader-analytics | get, list, watch для ресурса configmaps в неймспейсе analytics | Аналитики данных | Неймспейс |
| cluster-admin              | Полный доступ ко всем ресурсам во всех неймспейсах и на уровне кластера (* на verbs, resources, apiGroups) | Kubernetes-администраторы | Кластерный |
