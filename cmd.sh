#!/bin/bash

# GW_HOST: Gateway host to ssh into
# GW_USER: username to ssh login into GW_HOST
# TARGET_IP: target ip in the local network that has the service running
# TARGET_PORT: target service port in the local network
# REMOTE_PORT: remote Gateway port to be forwarded
# KEY_PATH: path to ssh key on the container

ssh -i ${KEY_PATH} -o StrictHostKeyChecking=no -o ProxyCommand="socat - PROXY:${PROXY_HOST}:%h:%p,proxyport=${PROXY_PORT}" -R ${REMOTE_PORT}:${TARGET_IP}:${TARGET_PORT} ${GW_USER}@${GW_HOST} tail
