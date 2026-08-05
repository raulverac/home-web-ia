FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY apps.html  /usr/share/nginx/html/apps.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
