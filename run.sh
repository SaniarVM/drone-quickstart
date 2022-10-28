#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=53c37d8c8a900970711a
export DRONE_GITHUB_CLIENT_SECRET=f287e409dd54e5dfd0c8f620b7f9f2427678ede3
export DRONE_GITHUB_ADMIN=SaniarVM
export DRONE_SERVER_HOST=0b58-217-128-52-119.eu.ngrok.io

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d
