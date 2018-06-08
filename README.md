# HackSaw
A lightweight Alpine-based debugging toolkit container for Kubernetes and Docker


## Introduction
Tired of continually spinning up simple Alpine and BusyBox containers to constantly install the same network debugging tools such as `curl`, `nslookup`, `dig`, `ping`, and others? So was I, that's why I created `HackSaw`, a all in one, lightweight, containerized library of commonly used debugging tools for containerized applications.

Running HackSaw, you can be sure that the debugging container will have the tools and utilities you need to investigate and troubleshoot errors in Docker and Kubernetes based environments.

## Running HackSaw in Docker:
HackSaw can be run on any Docker daemon using the following command:

```
docker run -it quay.io/aric49/hacksaw:latest
```

## Running HackSaw in Kubernetes
__TBD__

## Executing the Integrated Kubernetes Testing Tools
__TBD__
