FROM bind9/base

WORKDIR /
ARG BIND9_VERSION
# Installing libuv-1.42.0 to defer to an official recommendation in https://github.com/isc-projects/bind9/blob/main/doc/arm/build.inc.rst
RUN if dpkg --compare-versions "$BIND9_VERSION" "gt" "9.20.0"; then \
        wget https://github.com/libuv/libuv/archive/refs/tags/v1.42.0.tar.gz && \
        tar -zxvf v1.42.0.tar.gz && \
        cd libuv-1.42.0/ && \
        sh autogen.sh && \
        ./configure && make && make install && \
        ldconfig && \
        cd ..;  \
    else \
        apt install libuv1-dev -y; \ 
    fi

# Downlod and complie `bind9`
RUN wget https://github.com/isc-projects/bind9/archive/refs/tags/v${BIND9_VERSION}.tar.gz
RUN tar -zxvf v${BIND9_VERSION}.tar.gz && \
    cd bind9-${BIND9_VERSION}/ && \
    autoreconf -fi && \
    ./configure --disable-doh && \
    make && make install && \
    cd ..

RUN echo 'export LD_LIBRARY_PATH=${LD_LIBRARY_PATH:+$LD_LIBRARY_PATH:}/bind9-${BIND9_VERSION}/lib/isc/.libs' | tee -a /etc/profile
RUN . /etc/profile && ldconfig
# create some folders and files
# Note that the `/var/named/` and `/var/log/named.log` will be set in `named.conf` 
RUN mkdir -p /usr/local/var/run/named/ /etc/bind/ /var/named/ /var/log/ && \
    touch /usr/local/var/run/named/session.key /var/log/named.log

# entrypoint.sh
COPY entrypoint.sh /