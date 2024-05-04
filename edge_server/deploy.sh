# Detached mode  : https://docs.docker.com/engine/reference/run/#foreground-and-background
# Restart policy : https://docs.docker.com/config/containers/start-containers-automatically/#use-a-restart-policy
#! /usr/bin/env bash
docker run -d -p 8000:80 --restart=unless-stopped --name edge_server edge_server:v1