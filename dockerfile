FROM nginx
COPY ./dist/ /usr/share/nginx/html/
COPY ./vhost.nginx.conf /etc/nginx/conf.d/blob.conf
EXPOSE 80 