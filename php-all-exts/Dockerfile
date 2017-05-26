FROM formapro/nginx-php-fpm:latest

# exts
RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests \
    php-mongodb php-curl php-intl php-soap php-xml php-mcrypt php-bcmath \
    php-mysql php-amqp php-mbstring php-ldap php-zip php-gd php-xdebug php-imagick && \
    echo "extension=amqp.so" > /etc/php/7.1/cli/conf.d/10-amqp.ini && \
    echo "extension=amqp.so" > /etc/php/7.1/fpm/conf.d/10-amqp.ini && \
    rm -f /etc/php/7.1/cli/conf.d/*xdebug.ini && \
    rm -f /etc/php/7.1/fpm/conf.d/*xdebug.ini && \
    rm -rf /var/lib/apt/lists/*
