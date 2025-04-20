FROM n8nio/n8n:1.29.0
ENTRYPOINT []
CMD ["sh", "-c", "n8n migrate:up --t 0"]
