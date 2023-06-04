FROM node:17-alpine

# Create app directory
WORKDIR /app

# Copy app source code
COPY . . 

# Install app dependencies
RUN npm install

# Expose port 3000 
# required for docker desktop port mapping
EXPOSE 3000

# Start the app
CMD ["node", ".index.js"]