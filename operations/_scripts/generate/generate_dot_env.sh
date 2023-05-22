#!/bin/bash

set -e


echo "In generate_dot_env.sh"

echo "$GHV_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/ghv.env"
echo "$GHS_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/ghs.env"

mkdir -p "${BITOPS_ENVROOT}/operations/deployment/ansible/config/gql-gateway"
mkdir -p "${BITOPS_ENVROOT}/operations/deployment/ansible/config/auth-subgraph"
mkdir -p "${BITOPS_ENVROOT}/operations/deployment/ansible/config/wallet-subgraph"
mkdir -p "${BITOPS_ENVROOT}/operations/deployment/ansible/config/chat-service"
mkdir -p "${BITOPS_ENVROOT}/operations/deployment/ansible/config/db"

echo "$GQL_ENV" > "${BITOPS_ENVROOT}/operations/deployment/ansible/config/gql-gateway/production.env"
echo "$AUTH_ENV" > "${BITOPS_ENVROOT}/operations/deployment/ansible/config/auth-subgraph/production.env"
echo "$WALLET_ENV" > "${BITOPS_ENVROOT}/operations/deployment/ansible/config/wallet-subgraph/production.env"
echo "$CHAT_ENV" > "${BITOPS_ENVROOT}/operations/deployment/ansible/config/chat-service/production.env"
echo "$DB_ENV" > "${BITOPS_ENVROOT}/operations/deployment/ansible/config/db/production.env"