docker run -it --rm \
 --name n8n \
 -p $PORT:5678 \
 -v n8n_data:/home/node/.n8n \
 docker.n8n.io/n8nio/n8n \
 start --tunnel
