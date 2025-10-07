# Use Ubuntu 22.04 as base
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl git docker.io docker-compose sudo

# Create working directory
WORKDIR /pi-node

# Copy local files (config, scripts)
COPY . .

# Expose Pi Node default port
EXPOSE 31400

# Default command to run Pi Node (adjust if needed)
CMD ["docker-compose", "up"]
