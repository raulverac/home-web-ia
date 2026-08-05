FROM nginx:alpine
COPY index.html           /usr/share/nginx/html/index.html
COPY apps.html            /usr/share/nginx/html/apps.html
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
EXPOSE 80
ENTRYPOINT ["/docker-entrypoint.sh"]
