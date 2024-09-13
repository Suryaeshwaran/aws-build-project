#!/bin/bash

container_id=$(sudo docker ps -q)

sudo docker rm -f $container_id

echo "Containers Stopped."
