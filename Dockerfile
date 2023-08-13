# Use the official Node.js 18 image as the base image
FROM node:14

# Install yarn package manager
RUN npm install -g yarn@1.21.1 --force

# Install rsync
RUN apt-get update -y && apt-get install -y rsync