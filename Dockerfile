FROM nginx:latest

COPY ./index.html /usr/share/nginx/html/index.html

COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
