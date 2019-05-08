FROM alpine:3.1

# Update
RUN apk add --update nodejs
RUN npm -g install npm@latest-2

# Install app dependencies
RUN npm install

EXPOSE  8080
CMD ["node", "server.js"]
