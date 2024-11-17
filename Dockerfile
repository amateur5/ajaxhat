# Koristi PHP 8.2 image
FROM php:8.2-cli

# Instaliraj potrebne PHP ekstenzije
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Postavljanje radnog direktorijuma unutar container-a
WORKDIR /var/www/html

# Kopiraj sve fajlove iz trenutnog direktorijuma u container
COPY . /var/www/html/

# Dodeli odgovarajuće permisije
RUN chown -R www-data:www-data /var/www/html

# Pokreni PHP server na portu 8000
CMD ["php", "-S", "0.0.0.0:8000"]
