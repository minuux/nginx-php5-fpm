FROM richarvey/nginx-php-fpm:php5

ENV timezone Asia/Shanghai

RUN apk update && \
    apk add --no-cache bash \
    php5-mssql \
    tzdata && \
    cp /usr/share/zoneinfo/${timezone} /etc/localtime && \
    echo ${timezone} > /etc/timezone && \
    apk del tzdata
