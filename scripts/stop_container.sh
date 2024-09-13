#!/bin/bash

# Get the list of running Docker containers
running_containers=$(docker ps -q)

# Check if there are any running containers
if [ -z "$running_containers" ]; then
    echo "No running Docker containers found."
    exit 0
fi

# Loop through each running container
for container_id in $running_containers; do
    # Check if the container is running
    if [ "$(docker ps -q -f id=$container_id)" ]; then
        echo "Stopping container with ID: $container_id"
        docker stop $container_id
    fi
done

echo "All running containers have been stopped."
