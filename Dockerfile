# Use official Node.js image from Docker Hub
FROM node:20


# Set working directory in the container
WORKDIR /app


# Install git to clone the repo
RUN apt-get update && apt-get install -y git


# Clone the benchmarking tool from GitHub
RUN git clone https://github.com/v8/web-tooling-benchmark.git .
COPY package.json /app/package.json


# Install Node.js dependencies
RUN npm install

# Default command to run when container starts
CMD ["npm", "run", "benchmark"]