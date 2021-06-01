Red Hat Universal Base Image with tooling
=====================

This Dockerfile vcan be used for debugging.

[![rhel-tools build status](https://quay.io/repository/ucomesdag/rhel-tools/status "Docker Repository on Quay")](https://quay.io/repository/ucomesdag/rhel-tools)

Branches
--------

This repository has multiple branches that relate to RedHat versions.

|Branch |RHEL Version|Docker image tag|
|-------|------------|----------------|
|main   |latest (8)  |latest          |
|7      |7           |7               |

Pull strategy
-------------

The different branches are **not** merged, they live as individual branches.

Manually starting
-----------------

```
docker run \
  --tty \
  --privileged \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  quay.io/ucomesdag/rhel-tools
```
