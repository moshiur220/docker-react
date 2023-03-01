# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application's source code to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the React.js application
CMD ["npm", "start"]
