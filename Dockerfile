FROM quay.io/ebriand/node:8-alpine

COPY server.js /usr/src/app/server.js

ENTRYPOINT ["/usr/local/bin/node", "/usr/src/app/server.js"]

EXPOSE 8000
