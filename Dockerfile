FROM richarvey/nginx-php-fpm:php5

ENV timezone Asia/Shanghai

RUN apk update && \
    apk add --no-cache bash \
    php5-mssql \
    tzdata && \
    cp /usr/share/zoneinfo/${timezone} /etc/localtime && \
    echo ${timezone} > /etc/timezone
#    apk del tzdata
    
# https://github.com/aliyun/aliyun-oss-php-sdk/issues/97
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing gnu-libiconv
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php
