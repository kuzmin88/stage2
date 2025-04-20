FROM n8nio/n8n:1.29.0
USER root
RUN chown -R node:node /home/node/.n8n
USER node
