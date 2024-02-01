<<<<<<< HEAD
# Use the official Node.js 18 image as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /react-docker-example/

COPY public/ /react-docker-example/public

COPY src/ /react-docker-example/src

COPY package.json /react-docker-example/

RUN npm install

CMD ["npm", "start"]
=======
FROM node:16-alpine

WORKDIR /app

COPY . /app

RUN npm install

RUN npm run build

EXPOSE 80

CMD ["npm", "run", "start"]
>>>>>>> e6d4a0b17bd425f48768e8405684f38987d2c0f5
