# Koristi PHP sa built-in serverom
FROM php:8.2-cli

# Kopiraj sve fajlove aplikacije u radni folder unutar Docker-a
COPY . /var/www/html

# Ekspozicija porta 8000 (default za PHP built-in server)
EXPOSE 8000

# Pokreni PHP built-in server
CMD ["php", "-S", "0.0.0.0:8000", "-t", "/var/www/html"]
