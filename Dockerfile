FROM haproxy:1.9

ARG APPLICATION_NAME
LABEL application $APPLICATION_NAME

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY 404.http /var/www/404.http
COPY 503.http /var/www/503.http
COPY noexample.http /var/www/noexample.http

