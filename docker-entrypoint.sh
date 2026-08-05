#!/bin/sh
envsubst '${GOOGLE_CLIENT_ID}' < /usr/share/nginx/html/index.html > /tmp/index.html
mv /tmp/index.html /usr/share/nginx/html/index.html
exec nginx -g "daemon off;"
