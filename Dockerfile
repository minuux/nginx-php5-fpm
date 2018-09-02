FROM richarvey/nginx-php-fpm:php5

ENV timezone Asia/Shanghai

RUN apk update && \
    apk add --no-cache bash \
    --repository http://dl-3.alpinelinux.org/alpine/edge/testing gnu-libiconv \
    php5-mssql \
    tzdata && \
    cp /usr/share/zoneinfo/${timezone} /etc/localtime && \
    echo ${timezone} > /etc/timezone && \
    apk del tzdata
    
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php
