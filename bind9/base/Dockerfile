FROM ubuntu

WORKDIR /
RUN apt-get update
# basic
RUN apt-get install vim git curl make autoconf automake libtool iputils-ping wget net-tools gettext g++ -y

# dependency
RUN apt-get install libssl-dev liburcu-dev pkg-config libcap-dev -y

