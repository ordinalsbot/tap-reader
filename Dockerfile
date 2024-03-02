FROM node:20.11-bullseye-slim

WORKDIR /app

# Install node deps
COPY package*.json ./
RUN npm install

COPY . .

CMD ["node", "src/main.mjs"]
