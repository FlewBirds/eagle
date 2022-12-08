FROM nginx:stable-alpine

COPY ./nginx_default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["/bin/sh", "-c", "exec nginx -g 'daemon off;';"]