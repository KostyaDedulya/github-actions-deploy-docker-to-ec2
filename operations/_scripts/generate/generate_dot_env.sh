#!/bin/bash

set -e


echo "In generate_dot_env.sh"

echo "$GHV_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/ghv.env"
echo "$GHS_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/ghs.env"

mkdir -p "${BITOPS_ENVROOT}/operations/deployment/config/gql-gateway"
mkdir -p "${BITOPS_ENVROOT}/operations/deployment/config/auth-subgraph"
mkdir -p "${BITOPS_ENVROOT}/operations/deployment/config/wallet-subgraph"
mkdir -p "${BITOPS_ENVROOT}/operations/deployment/config/chat-service"
mkdir -p "${BITOPS_ENVROOT}/operations/deployment/config/db"

echo "$GQL_ENV" > "${BITOPS_ENVROOT}/operations/deployment/config/gql-gateway/production.env"
echo "$AUTH_ENV" > "${BITOPS_ENVROOT}/operations/deployment/config/auth-subgraph/production.env"
echo "$WALLET_ENV" > "${BITOPS_ENVROOT}/operations/deployment/config/wallet-subgraph/production.env"
echo "$CHAT_ENV" > "${BITOPS_ENVROOT}/operations/deployment/config/chat-service/production.env"
echo "$DB_ENV" > "${BITOPS_ENVROOT}/operations/deployment/config/db/production.env"