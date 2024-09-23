#!/bin/bash

# List all Docker images
echo "Listing all Docker images:"
docker images

# List all Docker containers (both running and stopped)
echo "Listing all Docker containers:"
docker ps -a

# Stop all running containers
echo "Stopping all running Docker containers..."
docker stop $(docker ps -q)

# Remove all Docker containers
echo "Removing all Docker containers..."
docker rm $(docker ps -a -q)

# Force remove all Docker images
echo "Force removing all Docker images..."
docker rmi -f $(docker images -q)

echo "All Docker images and containers have been forcefully deleted."
