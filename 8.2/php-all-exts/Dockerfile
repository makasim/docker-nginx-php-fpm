FROM makasim/nginx-php-fpm:8.2

# exts
RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests \
    php-mongodb php-curl php-intl php-soap php-xml php-bcmath \
    php-mysql php-amqp php-gearman php-mbstring php-ldap php-zip php-gd php-xdebug php-imagick && \
    rm -f /etc/php/8.2/cli/conf.d/*xdebug.ini && \
    rm -f /etc/php/8.2/fpm/conf.d/*xdebug.ini && \
    rm -rf /var/lib/apt/lists/*
