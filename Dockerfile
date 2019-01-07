
FROM alpine:3.8
 
MAINTAINER hbstarjason <hbstarjason@gmail.com>

ENV Frp_ver 0.21.0

# https://github.com/fatedier/frp/releases

RUN wget --no-check-certificate https://github.com/fatedier/frp/releases/download/v${Frp_ver}/frp_${Frp_ver}_linux_amd64.tar.gz && \
    tar -zxf frp_${Frp_ver}_linux_amd64.tar.gz && \
    mkdir /var/frp && \
    mkdir /var/frp/log && \
    mv frp_${Frp_ver}_linux_amd64/* /var/frp && \
    rm -rf frp_${Frp_ver}_linux_amd64.tar.gz 
    
COPY frps.ini /var/frp/conf/frps.ini

WORKDIR /var/frp

ENTRYPOINT ./frps -c conf/frps.ini
