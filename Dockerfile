FROM n8nio/n8n:latest

USER root

RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

ENV TZ=Asia/Jakarta \
    GENERIC_TIMEZONE=Asia/Jakarta

USER node

CMD ["n8n"]
