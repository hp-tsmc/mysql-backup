FROM debian:bullseye-20240408

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update

RUN apt install -y mariadb-client openssl wget fuse kmod cron vim-tiny curl

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc

RUN mv mc /usr/bin/ && chmod +x /usr/bin/mc

COPY  minfs_1.0.0_linux_amd64.deb /tmp/

RUN dpkg -i /tmp/minfs_1.0.0_linux_amd64.deb
