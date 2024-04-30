# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Install n8n globally using npm
RUN npm install n8n -g

# Expose port 5678
EXPOSE 5678

# Start n8n when the container launches
CMD ["n8n"]
