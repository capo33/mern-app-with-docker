FROM node:17-alpine

# Install dependencies
RUN npm install -g nodemon

# Create app directory
WORKDIR /app

# Copy package.json
COPY package.json .

# Install app dependencies
RUN npm install

# Copy app source code / the rest of the files and place them in the app directory
COPY . . 

# Expose port 3000 
# required for docker desktop port mapping
EXPOSE 4000

# Start the app
CMD ["npm", "run", "dev"]
