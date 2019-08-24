FROM haproxy:2.0

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY 404.http /var/www/404.http

