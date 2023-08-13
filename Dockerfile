# Use the official Node.js 18 image as the base image
FROM node:16

# Install yarn package manager
RUN npm install -g yarn@1.22.10 --force

# Install rsync
RUN apt-get update -y && apt-get install -y rsync