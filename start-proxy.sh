#!/bin/bash

# Build the Docker image
docker build -t nginx-reverse-proxy .

# Run the Docker container with environment variables
docker run -d -p 80:80 --env-file .env nginx-reverse-proxy
