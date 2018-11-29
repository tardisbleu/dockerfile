FROM node:10-alpine

# Specify the "working directory" for the rest of the Dockerfile
WORKDIR /src/app

# Clone git project
RUN apk update && apk upgrade && apk add git
RUN git clone https://github.com/tardisbleu/node.git .

# Install packages
RUN npm install --silent

# Allows port 80 to be publicly available
EXPOSE 80

# launch server
CMD ["node", "index.js"]
