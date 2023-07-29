FROM docker.io/library/mediawiki:1.40.0

WORKDIR /var/www/html

COPY ./composer.local.json ./composer.local.json
COPY ./setup.sh ./setup.sh
COPY ./novia-land-php.ini /usr/local/etc/php/conf.d/novia-land-php.ini

RUN chmod a+x ./setup.sh
RUN /bin/bash setup.sh

CMD ["apache2-foreground"]
