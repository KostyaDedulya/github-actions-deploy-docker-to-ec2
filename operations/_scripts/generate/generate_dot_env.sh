#!/bin/bash

set -e


echo "In generate_dot_env.sh"

echo "$GHV_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/ghv.env"
echo "$GHS_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/ghs.env"

echo "$GQL_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/config/gql-gateway/production.env"
echo "$AUTH_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/config/auth-subgraph/production.env"
echo "$WALLET_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/config/wallet-subgraph/production.env"
echo "$CHAT_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/config/chat-service/production.env"
echo "$DB_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/config/db/production.env"