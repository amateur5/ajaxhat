FROM php:8.2-cli

WORKDIR /var/www/html

# Instaliraj potrebne PHP ekstenzije
RUN apt-get update && apt-get install -y \
    libzip-dev libonig-dev libcurl4-openssl-dev \
    && docker-php-ext-install zip mbstring curl pdo pdo_mysql

# Instaliraj Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Kopiraj fajlove
COPY . /var/www/html/

# Dodeli permisije
RUN chown -R www-data:www-data /var/www/html

# Expose port i pokreni server
EXPOSE 8000
CMD ["php", "-S", "0.0.0.0:8000"]
