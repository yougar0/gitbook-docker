FROM node:10-slim

RUN apt-get update && apt-get install -y calibre git
RUN npm install -g npm
RUN npm install -g gitbook-cli
RUN gitbook install

WORKDIR "/book"