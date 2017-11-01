FROM node

COPY . /Meet_Client
WORKDIR /Meet_Client

RUN \
  npm install &&\
  npm install axios

RUN \
  npm install -g pushstate-server

CMD \
  pushstate-server build
