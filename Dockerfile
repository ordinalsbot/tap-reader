FROM node:20.11-bullseye-slim

WORKDIR /app

# Install node deps
COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 5095
EXPOSE 5099
CMD ["node", "src/main.mjs"]
