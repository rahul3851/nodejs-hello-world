# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY index.js .

# Expose the port the app runs on
EXPOSE 80:80

# Define the command to run the application
CMD ["node", "index.js"]
