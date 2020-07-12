FROM node:12-alpine

RUN apk add --no-cache make gcc g++ python git libtool autoconf automake libsodium libsodium-dev

RUN npm install ssb-server@latest -g --unsafe-perm

COPY docker-entrypoint /docker-entrypoint

COPY config /config

ENTRYPOINT ["/docker-entrypoint"]
