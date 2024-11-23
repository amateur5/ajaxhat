# Koristi PHP 8.2 image
FROM php:8.2-cli

# Postavljanje radnog direktorijuma
WORKDIR /var/www/html

# Instaliraj potrebne pakete i PHP ekstenzije
RUN apt-get update && apt-get install -y \
    libzip-dev libonig-dev libcurl4-openssl-dev unzip \
    && docker-php-ext-install zip mbstring curl pdo pdo_mysql

# Kopiraj fajlove aplikacije u radni direktorijum
COPY . /var/www/html/

# Instaliraj Composer za upravljanje zavisnostima
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
RUN composer install || true

# Dodeli permisije fajlovima
RUN chown -R www-data:www-data /var/www/html

# Pokreni PHP server na portu 8000
CMD ["php", "-S", "0.0.0.0:8000", "-t", "/var/www/html", "router.php"]

# Expose port 8000
EXPOSE 8000
