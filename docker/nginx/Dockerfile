FROM debian:stretch-slim
MAINTAINER Samuel NELA <hello@samnela.com>

RUN apt-get update && apt-get install -y \
    nginx
COPY nginx.conf /etc/nginx/
COPY rabbit.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/rabbit.conf /etc/nginx/sites-enabled/rabbit.conf

RUN rm /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/sites-available/default

RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf

#RUN adduser -D -g '' -G www-data www-data

RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80 443
