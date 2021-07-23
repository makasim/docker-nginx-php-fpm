FROM makasim/nginx-php-fpm:7.4

# exts
RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests \
    php7.4-mongodb php7.4-curl php7.4-intl php7.4-soap php7.4-xml php7.4-bcmath \
    php7.4-mysql php7.4-amqp php7.4-gearman php7.4-mbstring php7.4-ldap php7.4-zip php7.4-gd php7.4-xdebug php7.4-imagick && \
    rm -f /etc/php/7.4/cli/conf.d/*xdebug.ini && \
    rm -f /etc/php/7.4/fpm/conf.d/*xdebug.ini && \
    rm -rf /var/lib/apt/lists/*
