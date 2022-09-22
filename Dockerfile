FROM node:current-alpine3.16

MAINTAINER <KARTIKCHOUHAN>

WORKDIR /NODE

COPY package*.json  /NODE

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
