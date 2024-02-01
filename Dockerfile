# Use an official Node.js runtime as a parent image
FROM node:16-alpine

WORKDIR .

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./



# Copy the application files to the working directory
COPY . .

# Install app dependencies
RUN npm install


RUN npm run build

# Expose port 80
EXPOSE 80

# Command to run the application
CMD npm run start
