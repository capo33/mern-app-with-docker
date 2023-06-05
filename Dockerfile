FROM node:17-alpine

# Install dependencies
RUN npm install nodemon

# Create app directory
WORKDIR /backend

# Copy package.json
COPY package.json .

# Install app dependencies
RUN yarn install

# Copy app source code
COPY . . 

# Expose port 3000 
# required for docker desktop port mapping
EXPOSE 4000

# Start the app
CMD ["npm", "run", "dev"]
 