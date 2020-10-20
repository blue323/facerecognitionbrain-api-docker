FROM node:8.11.1

# Create app directory
RUN mkdir -p /usr/src/facerecognitionbrain-api-docker
WORKDIR /usr/src/facerecognitionbrain-api-docker

#Install app dependencies
COPY package.json /usr/src/facerecognitionbrain-api-docker
RUN npm install

# Bundle app source
COPY . /usr/src/facerecognitionbrain-api-docker

# Build arguments
ARG NODE_VERSION=12.3.1

# Environment
ENV NODE_VERSION $NODE_VERSION
