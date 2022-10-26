#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=53c37d8c8a900970711a
export DRONE_GITHUB_CLIENT_SECRET=a65e473a1bc8b9d9b05fc49e6edfd79884af129fb
export DRONE_GITHUB_ADMIN=SaniarVM
export DRONE_SERVER_HOST=25ca-80-15-34-36.eu.ngrok.io

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d
