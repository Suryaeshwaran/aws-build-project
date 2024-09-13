#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull suryaeshwaran/simple-python-flask-app:latest

# Run the Docker image as a container
docker run -d suryaeshwaran/simple-python-flask-app
