# Use a base image that has Node.js installed
FROM node:18

# Create a volume for n8n data
RUN docker volume create n8n_data

# Set the working directory
WORKDIR /usr/src/app

# Copy the .sh file into the container
COPY dock.sh ./dock.sh

# Expose the port
EXPOSE 5678

# Start the n8n service
CMD ["sh", "/usr/src/app/dock.sh"]
