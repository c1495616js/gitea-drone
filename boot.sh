#!/usr/bin/env bash

export HOSTNAME=$(hostname)
export DRONE_VERSION=latest
export DRONE_RUNNER_VERSION=latest
export GITEA_VERSION=latest
export IP_ADDRESS=10.90.34.166 #change to your ip
export MINIO_ACCESS_KEY="EXAMPLEKEY"
export MINIO_SECRET_KEY="EXAMPLESECRET"
export GITEA_ADMIN_USER="example"
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${GITEA_ADMIN_USER},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
export DRONE_GITEA_CLIENT_ID="" #change here
export DRONE_GITEA_CLIENT_SECRET="" #change here
docker-compose up -d

echo ""
echo "Gitea: http://${IP_ADDRESS}:3000/"
echo "Drone: http://${IP_ADDRESS}:3001/"
