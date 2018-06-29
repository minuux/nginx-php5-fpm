FROM richarvey/nginx-php-fpm:php5

RUN apk update && \
    apk add --no-cache bash \
    php5-mssql

