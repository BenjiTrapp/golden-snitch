FROM openresty/openresty:jessie

USER 0

COPY containerfiles /

RUN luarocks install luajson && \
    mkdir -p /var/log/nginx && \
    chmod -R ugo+rw /var/log/ && \
    chmod -R ugo+rw /var/log/nginx && \
    chmod -R ugo+rwx /usr/local/openresty
    
USER 1001
