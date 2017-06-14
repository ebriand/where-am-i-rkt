#!/bin/sh

acbuild begin

acbuild set-name ebriand/where-am-i
acbuild dep add quay.io/ebriand/node:8-alpine

acbuild copy server.js /usr/src/app/server.js

acbuild set-exec -- /usr/local/bin/node /usr/src/app/server.js

acbuild port add www tcp 8000

acbuild write --overwrite where-am-i-1.0.0-linux-amd64.aci

acbuild end
