FROM richarvey/nginx-php-fpm:php5

ENV timezone Asia/shanghai
RUN apk update && \
    apk add --no-cache bash \
    php5-mssql \
    tzdata && \
    apk del tzdata
