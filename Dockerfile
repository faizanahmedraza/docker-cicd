# Use the official Node.js 18 image as the base image
FROM node:12

# Install rsync
RUN apt-get update -y && apt-get install -y rsync