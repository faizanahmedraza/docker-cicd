# Use the official Node.js 18 image as the base image
FROM node:18

# Install yarn package manager
RUN npm install -g yarn

# Install rsync
RUN apt-get update -y && apt-get install -y rsync