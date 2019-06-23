FROM php:7.3-fpm
LABEL maintainer="hello@samnela.com"
RUN apt-get update && apt-get install -y librabbitmq-dev libssh-dev \
    git  unzip vim  htop  python-setuptools supervisor  \
    && pecl install amqp swoole

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version
RUN easy_install supervisor
# Set timezone
RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN "date"
# COPY php.ini /usr/local/etc/php/php.ini
# Type docker-php-ext-install to see available extensions
RUN docker-php-ext-install pdo pdo_mysql mbstring bcmath sockets pcntl

RUN docker-php-ext-enable  amqp

WORKDIR /var/www/
