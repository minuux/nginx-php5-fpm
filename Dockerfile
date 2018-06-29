FROM richarvey/nginx-php-fpm:php5

ENV timezone Asia/shanghai
RUN apk update && \
    apk add --no-cache php5-mssql \
    tzdata \
    cp /usr/share/zoneinfo/${timezone} /etc/localtime && \
    echo ${timezone} >  /etc/timezone && \
    apk del tzdata
