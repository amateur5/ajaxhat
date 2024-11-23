Skip to content
Navigation Menu
amateur5
/
ajaxhat

Type / to search
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
Settings
Files
Go to file
t
chat
css
flash
img
js
lib
socket
sounds
src
Dockerfile
changelog.txt
chat.sql
index.php
install.php
license.txt
readme.html
readme.md
Editing Dockerfile in ajaxhat
Breadcrumbsajaxhat/chat
/
Dockerfile
in
main

Edit

Preview
Indent mode

Spaces
Indent size

2
Line wrap mode

No wrap
Editing Dockerfile file contents
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
# Koristi PHP 8.2 image
FROM php:8.2-cli

# Postavljanje radnog direktorijuma unutar container-a
WORKDIR /var/www/html

# Kopiraj sve fajlove iz trenutnog direktorijuma u container
COPY . /var/www/html/

# Dodeli odgovarajuće permisije
RUN chown -R www-data:www-data /var/www/html

# Pokreni PHP server na portu 8000
CMD ["php", "-S", "0.0.0.0:8000"]

Use Control + Shift + m to toggle the tab key moving focus. Alternatively, use esc then tab to move to the next interactive element on the page.
Editing ajaxhat/chat/Dockerfile at main · amateur5/ajaxhat 
