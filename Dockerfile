# Start from the official Node image
FROM node:18

# Create app directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your code
COPY . .

# Expose port (match the port your app listens on)
EXPOSE 3000

# Run your app
CMD ["npm", "start"]
