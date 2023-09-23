#!/bin/bash

# Build the Docker image
docker build -t nginx-reverse-proxy .

# Run the Docker container with environment variables
docker run -d -p 8080:8080 --env-file .env nginx-reverse-proxy
