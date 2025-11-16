FROM node:20-alpine

WORKDIR /usr/src/app

# Install only production deps
COPY package*.json ./
RUN npm ci --only=production

# Copy app source
COPY . .

# Expose app port
EXPOSE 3000

# Use PORT env to allow overrides
ENV PORT=3000

CMD ["npm", "start"]
