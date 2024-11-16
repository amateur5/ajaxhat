# Koristi PHP server sa Apache-om
FROM php:8.2-apache

# Kopiraj sve fajlove aplikacije u radni folder unutar Docker-a
COPY . /var/www/html

# Daj prava za sve fajlove Apache serveru
RUN chown -R www-data:www-data /var/www/html

# Instaliraj potrebne PHP ekstenzije (ako koristiš MySQL bazu)
RUN docker-php-ext-install mysqli

# Ekspozicija porta 80 za pristup aplikaciji
EXPOSE 80

# Pokreni PHP server
CMD ["apache2-foreground"]
