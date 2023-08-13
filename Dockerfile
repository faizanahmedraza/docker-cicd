# Use the official Node.js 18 image as the base image
FROM node:12

# Install yarn package manager
RUN npm install -g yarn@1.21.1  --force

# Install rsync from an alternative package source for stretch
RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list && \
    echo "Acquire::Check-Valid-Until no;" > /etc/apt/apt.conf.d/99no-check-valid-until && \
    apt-get update && \
    apt-get install -y --no-install-recommends rsync && \
    rm /etc/apt/sources.list && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*