#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=53c37d8c8a900970711a
export DRONE_GITHUB_CLIENT_SECRET=77f3c335bbf73a6e418f891f001e69579cd619db
export DRONE_GITHUB_ADMIN=SaniarVM
export DRONE_SERVER_HOST=a098-217-128-52-119.eu.ngrok.io

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d
