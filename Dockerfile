FROM n8nio/n8n:latest

USER root

# Allow unsafe permissions and install required modules globally
RUN npm config set unsafe-perm true && \
    npm install -g puppeteer-core @zenrows/browser-sdk

# Allow these external modules in n8n Function nodes
ENV NODE_FUNCTION_ALLOW_EXTERNAL=puppeteer-core,@zenrows/browser-sdk

USER node
