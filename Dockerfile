FROM node:16.10-alpine

WORKDIR /src

COPY . /src

RUN apk add openssl-dev gcc g++ postgresql-dev python2 make git && \
  cd /src && \
  npm install

CMD ["npm", "run", "start"]
