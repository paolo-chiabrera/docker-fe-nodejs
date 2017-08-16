FROM node:8-alpine

MAINTAINER Paolo Chiabrera <paolo.chiabrera@gmail.com>

ONBUILD ADD package.json /tmp/package.json

ONBUILD RUN cd /tmp \
    && npm install

ONBUILD RUN mkdir -p /home/app \
    && cp -a /tmp/node_modules /home/app

ONBUILD ADD . /home/app

ONBUILD WORKDIR /home/app

CMD [ "node" ]
