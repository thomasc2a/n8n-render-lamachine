FROM n8nio/n8n:latest
USER root
RUN npm install -g puppeteer-core @zenrows/browser-sdk
USER node
