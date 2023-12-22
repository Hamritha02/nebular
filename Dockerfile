# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

FROM nginx:1.25.3-alpine3.18
# Copy the rest of your application code to the container
COPY ./dist/playground /usr/share/nginx/html/

# Expose a port (if your app runs a server)
EXPOSE 80
