FROM registry.access.redhat.com/ubi7/ubi:latest

LABEL maintainer="Uco Mesdag <uco@mesd.ag>"
LABEL build_date="2021-12-19T16:18:53CET"

ENV container=podman

WORKDIR /root

RUN yum -y update && yum -y install \
    iputils \
    iproute \
    bind-utils \
    openssh-clients \
    openssl \
    nmap \
    curl \
    zip \
    less \
    && yum clean all

VOLUME ["/sys/fs/cgroup"]

CMD ["tail", "-f", "/dev/null"]
