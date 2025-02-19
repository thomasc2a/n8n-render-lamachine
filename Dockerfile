# Use the official n8n image as the base image
FROM n8nio/n8n:latest

# Install Puppeteer dependencies for Alpine Linux
RUN apk update && apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont \
    wget

# Tell Puppeteer to use the installed Chromium executable
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# Install Puppeteer and Zenrows Browser Scraper via npm
RUN npm install puppeteer zenrows-browser-scraper
