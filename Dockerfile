# Set the working directory in the container
WORKDIR /usr/src/app

# Install n8n globally using npm
RUN npm install n8n -g

# Start n8n with the --tunnel option
CMD ["n8n", "start", "--tunnel"]
