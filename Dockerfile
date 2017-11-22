FROM nginx:1.12-alpine
LABEL maintainer="brent.atkinson@gmail.com"

RUN rm -f /etc/nginx/conf.d/*.conf
ADD ./redirect-ssl.conf /etc/nginx/conf.d/

EXPOSE 80

