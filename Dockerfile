# Use the official Node.js 18 image as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /react-docker-example/

COPY public/ /react-docker-example/public

COPY src/ /react-docker-example/src

COPY package.json /react-docker-example/

RUN npm install

CMD ["npm", "start"]
