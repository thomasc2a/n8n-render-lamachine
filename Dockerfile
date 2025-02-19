FROM n8nio/n8n:latest

# Install puppeteer-core and ZenRows SDK
RUN npm install -g puppeteer-core @zenrows/browser-sdk

# Set environment variable to allow external modules
ENV NODE_FUNCTION_ALLOW_EXTERNAL=puppeteer-core,@zenrows/browser-sdk

# Continue with the n8n startup command (if not already specified)
