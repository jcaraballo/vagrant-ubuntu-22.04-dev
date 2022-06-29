#!/bin/bash

echo 'Installing dependencies and key' >&2
apt-get install ca-certificates curl gnupg lsb-release && \
mkdir -p /etc/apt/keyrings && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo 'Adding repository and installing' >&2
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list && \
apt-get update && \
apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

