FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
MAINTAINER Rico Staeblein <rico.staeblein@hytera.de>
COPY package.json /usr/src/app/
RUN npm install --silent
COPY . /usr/src/app
COPY prod.env /usr/src/app/.env
CMD [ "npm", "start" ]
