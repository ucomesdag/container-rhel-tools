FROM registry.access.redhat.com/ubi8/ubi:latest

LABEL maintainer="Uco Mesdag <uco@mesd.ag>"
LABEL build_date="2021-12-19T16:16:42CET"

ENV container=podman

WORKDIR /root

RUN dnf -y update && dnf -y install \
    iputils \
    iproute \
    bind-utils \
    openssh-clients \
    openssl \
    nmap \
    curl \
    zip \
    less \
    && dnf clean all

VOLUME ["/sys/fs/cgroup"]

CMD ["tail", "-f", "/dev/null"]
