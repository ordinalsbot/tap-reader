FROM node:20.11-bullseye-slim

WORKDIR /app

COPY . .

# Install node deps
RUN npm install

CMD ["npm", "start"]
