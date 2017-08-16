FROM node:8-alpine

MAINTAINER Paolo Chiabrera <paolo.chiabrera@gmail.com>

ADD package.json /tmp/package.json

RUN cd /tmp \
    && npm install

RUN mkdir -p /home/app \
    && cp -a /tmp/node_modules /home/app

WORKDIR /home/app

ADD . /home/app

CMD [ "node" ]
