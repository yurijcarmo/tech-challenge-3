# AWS ACADEMY: iam:CreateOpenIDConnectProvider não é permitido pela LabRole.
# O projeto usa LabRole diretamente nos ServiceAccounts (sem IRSA), então o
# OIDC provider IAM não é necessário. Recurso removido para evitar erro no apply.
