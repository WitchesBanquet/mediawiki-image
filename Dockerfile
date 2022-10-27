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

ENV MW_C_DB_TYPE=mysql
ENV MW_C_DB_HOST=database:3306
ENV MW_C_DB_NAME=mediawiki
ENV MW_C_DB_USER=mediawiki
ENV MW_C_DB_PASSWORD=dbpassword
ENV MW_C_MEMCACHED_SERVER=memcached:11211
ENV MW_C_EMAIL_EMERGENCY_CONTACT=admin@example.com
ENV MW_C_EMAIL_SENDER=admin@example.com
ENV MW_C_SMTP_ENABLE_AUTH=true
ENV MW_C_SMTP_HOST=smtp.example.com
ENV MW_C_SMTP_PORT=25
ENV MW_C_SMTP_USERNAME=admin@example.com
ENV MW_C_SMTP_PASSWORD=password
ENV MW_C_OIDC_PROVIDER_URL=https://sso.example.com
ENV MW_C_OIDC_CLIENT_ID=id
ENV MW_C_OIDC_CLIENT_SECRET=secret
ENV MW_C_SECRET_KEY=""
ENV MW_C_SECRET_UPGRADE_KEY=""
ENV MW_C_SECRET_AUTH_TOKEN_VERSION=1

CMD ["apache2-foreground"]
