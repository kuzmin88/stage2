FROM docker.n8n.io/n8nio/n8n:1.29.0

USER root
RUN apk add --no-cache ffmpeg curl \
    && mkdir -p /home/node/.n8n/custom \
    && chown -R node:node /home/node/.n8n

USER node

RUN npm init -y --prefix /home/node/.n8n/custom \
 && npm install --production --prefix /home/node/.n8n/custom n8n-nodes-icloud
