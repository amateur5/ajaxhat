# Postavljanje radnog direktorijuma
WORKDIR /var/www/html

# Kopiraj sve fajlove aplikacije u radni direktorijum
COPY . /var/www/html/

# Daj prava fajlovima
RUN chown -R www-data:www-data /var/www/html

# Pokreni aplikaciju (ako je PHP, pokreni PHP server, ili ako koristiš Node.js, odgovarajući server)
CMD ["php", "-S", "0.0.0.0:80"]
