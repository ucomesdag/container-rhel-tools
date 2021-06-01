FROM registry.access.redhat.com/ubi7

ARG BUILD_DATE

LABEL maintainer="Uco Mesdag <uco@mesd.ag>"
LABEL build_date=${BUILD_DATE}

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
