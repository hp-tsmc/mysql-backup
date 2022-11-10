FROM ubuntu:20.04

RUN apt update

RUN DEBIAN_FRONTEND=noninteractive apt install -y mariadb-client-10.3 openssl wget

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc

RUN mv mc /usr/bin/ && chmod +x /usr/bin/mc

COPY  minfs_1.0.0_linux_amd64.deb /tmp/

RUN dpkg -i /tmp/minfs_1.0.0_linux_amd64.deb