# Choose the version of Node you need
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your app's code
COPY . .

# Expose the port your app runs on (e.g., 3000)
EXPOSE 3000

# The command to start your app
CMD ["npm", "start"]
