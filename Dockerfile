# Use a base image that has Node.js installed
FROM arm32v7/node:18-buster

# Create a volume for n8n data
VOLUME /home/node/.n8n

# Set the working directory
WORKDIR /usr/src/app

# Copy the .sh file into the container
COPY dock.sh /usr/src/app/dock.sh

# Expose the port
EXPOSE ${PORT}

# Start the n8n service
CMD ["sh", "/usr/src/app/dock.sh"]
