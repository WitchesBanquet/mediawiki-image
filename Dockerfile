FROM docker.io/library/mediawiki:1.38.4

WORKDIR /var/www/html

COPY ./config ./config
COPY ./custom ./custom
COPY ./composer.local.json ./composer.local.json
COPY ./LocalSettings.php ./LocalSettings.php
COPY ./setup.sh ./setup.sh
COPY ./novia-land-php.ini /usr/local/etc/php/conf.d/novia-land-php.ini

RUN chmod a+x ./setup.sh
RUN /bin/sh setup.sh

CMD ["apache2-foreground"]
