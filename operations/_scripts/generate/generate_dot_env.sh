#!/bin/bash

set -e


echo "In generate_dot_env.sh"

echo "$GHV_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/ghv.env"
echo "$GHS_ENV" > "${GITHUB_ACTION_PATH}/operations/deployment/ansible/ghs.env"

echo "${GITHUB_ACTION_PATH}"

mkdir -p "${GITHUB_ACTION_PATH}/dice-bet/config/gql-gateway"
mkdir -p "${GITHUB_ACTION_PATH}/dice-bet/config/auth-subgraph"
mkdir -p "${GITHUB_ACTION_PATH}/dice-bet/config/wallet-subgraph"
mkdir -p "${GITHUB_ACTION_PATH}/dice-bet/config/chat-service"
mkdir -p "${GITHUB_ACTION_PATH}/dice-bet/config/db"

echo "$GQL_ENV" > "${GITHUB_ACTION_PATH}/dice-bet/config/gql-gateway/production.env"
echo "$AUTH_ENV" > "${GITHUB_ACTION_PATH}/dice-bet/config/auth-subgraph/production.env"
echo "$WALLET_ENV" > "${GITHUB_ACTION_PATH}/dice-bet/config/wallet-subgraph/production.env"
echo "$CHAT_ENV" > "${GITHUB_ACTION_PATH}/dice-bet/config/chat-service/production.env"
echo "$DB_ENV" > "${GITHUB_ACTION_PATH}/dice-bet/config/db/production.env"