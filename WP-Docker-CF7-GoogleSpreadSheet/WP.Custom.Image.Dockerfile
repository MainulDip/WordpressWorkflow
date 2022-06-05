FROM wordpress:php8.1-apache

WORKDIR /var/www/html/

#install some base extensions
RUN apt-get update \
    && docker-php-ext-install pdo pdo_mysql

# ADD ./custom-themes ./wp-content/themes/
# ADD ./custom-plugins ./wp-content/plugins/