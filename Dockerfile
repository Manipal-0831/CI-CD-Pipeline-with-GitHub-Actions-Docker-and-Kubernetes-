# Use a slim Node image for a smaller final footprint
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Expose the application port (8080)
EXPOSE 8080

# Command to run the application
CMD ["npm", "start"]
