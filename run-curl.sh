#!/bin/sh

# Determine the host IP address from the special DNS name `host.docker.internal`
HOST_IP=$(getent hosts host.docker.internal | awk '{ print $1 }')

# Run the curl command using the resolved host IP
curl http://$HOST_IP:11434/api/generate -d '{
  "model": "llama2",
  "prompt": "Why is the sky blue?"
}'
