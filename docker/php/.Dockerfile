FROM php:8.4-fpm
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN apt-get update \
&& apt-get install -y curl vim git libmemcached-dev libssl-dev libicu-dev zlib1g-dev zip unzip openssh-client rsync nodejs npm\
&& apt-get clean -y

RUN docker-php-source extract \
    && docker-php-ext-configure intl \
    && docker-php-ext-install bcmath mysqli pdo pdo_mysql opcache sockets pcntl intl\
    && docker-php-source delete

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

RUN mkdir /var/lib/php \
    && mkdir /var/lib/php/sessions \
    && chmod 777 /var/lib/php/sessions \
    && echo "session.save_path = /var/lib/php/sessions" >> /usr/local/etc/php/php.ini-development \
    && mv /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini \
    && kill -USR2 1 \
    && usermod -u 1000 www-data

WORKDIR /var/www/html/