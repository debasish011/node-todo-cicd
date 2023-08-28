# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY app.js ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code
COPY test.js/ .

# Expose port 8000
EXPOSE 8000

# Command to run the application
CMD [ "node", "app.js" ]
