FROM registry.access.redhat.com/ubi9

ARG BUILD_DATE

LABEL summary="Red Hat Universal Base Image 9 with tooling."
LABEL maintainer="Uco Mesdag <uco@mesd.ag>"
LABEL build-date=${BUILD_DATE}

ENV container=podman

WORKDIR /root

RUN dnf -y update && dnf -y install \
    iputils \
    iproute \
    bind-utils \
    openssh-clients \
    openssl \
    nmap \
    zip \
    less \
    && dnf clean all

VOLUME ["/sys/fs/cgroup"]

CMD ["tail", "-f", "/dev/null"]
