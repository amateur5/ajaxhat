# Koristi PHP 8.2 image
FROM php:8.2-cli

# Postavljanje radnog direktorijuma unutar container-a
WORKDIR /var/www/html

# Kopiraj samo composer fajlove (ako koristiš Composer) i instaliraj zavisnosti
COPY composer.json composer.lock ./
RUN composer install --no-dev --optimize-autoloader

# Kopiraj sve fajlove iz trenutnog direktorijuma u container
COPY . /var/www/html/

# Dodeli odgovarajuće permisije
RUN chown -R www-data:www-data /var/www/html

# Pokreni PHP server na portu 8000
CMD ["php", "-S", "0.0.0.0:8000"]

# Expose port 8000
EXPOSE 8000
