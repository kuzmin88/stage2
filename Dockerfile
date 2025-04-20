FROM n8nio/n8n:1.29.0
USER root
RUN chown -R node:node /home/node/.n8n
USER node
CMD ["sh", "-c", "n8n migrate:up --t 0 && n8n start"]
