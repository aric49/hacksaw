# HackSaw
A lightweight Alpine-based debugging toolkit container for Kubernetes and Docker

[![Docker Repository on Quay](https://quay.io/repository/aric49/hacksaw/status "Docker Repository on Quay")](https://quay.io/repository/aric49/hacksaw)


## Introduction
Tired of continually spinning up simple Alpine and BusyBox containers to constantly install the same network debugging tools such as `curl`, `nslookup`, `dig`, `ping`, and others? So was I, that's why I created `HackSaw`, a all in one, lightweight, containerized library of commonly used debugging tools for containerized applications.

Running HackSaw, you can be sure that the debugging container will have the tools and utilities you need to investigate and troubleshoot errors in Docker and Kubernetes based environments.

## Running HackSaw in Docker:
HackSaw can be run on any Docker daemon using the following command:

```
docker run -it quay.io/aric49/hacksaw:latest
```

Exec-ing into this container will give you full access to a minimal shell giving you commonly used debugging tools such as  `curl`, `nslookup`, `dig`, `ping/hping`, `netcat`, `openssl`, `tmux`, `git`, and many others.

## Running HackSaw in Kubernetes
Using the below command, you spin up a super fast Kubernetes deployment which will drop you directly into an interactive session:

```
$ kubectl run hacksaw -it --image quay.io/aric49/hacksaw:latest
If you don't see a command prompt, try pressing enter.
/workdir # dig kubernetes.io && ping kubernetes.io
...
```
## Executing the Integrated Kubernetes Testing Tools
When Deployed in Kubernetes, you have access to a suite of testing scripts that give you insight into your cluster by accessing the Kubernetes API Server directly.  Currently, the following tools are available in HackSaw:

1. __kubernetes-get-pods__ - Returns a list of pods in the current namespace:

```
$ kubectl exec -it hacksaw-5c7846bc5d-p28pk /bin/sh
/workdir # kubernetes-get-pods
{
  "kind": "PodList",
  "apiVersion": "v1",
  "metadata": {
    "selfLink": "/api/v1/namespaces/default/pods",
    "resourceVersion": "1369"
  },
  "items": [
    {
      "metadata": {
        "name": "hacksaw-5c7846bc5d-p28pk",
        "generateName": "hacksaw-5c7846bc5d-",
        "namespace": "default",
        "selfLink": "/api/v1/namespaces/default/pods/hacksaw-5c7846bc5d-p28pk",
        "uid": "0573b6ee-6b49-11e8-97d0-080027ea6c65",
        "resourceVersion": "941",
        "creationTimestamp": "2018-06-08T18:23:20Z",
        "labels": {
          "pod-template-hash": "1734026718",
          "run": "hacksaw"
...
```

__More Coming Soon!__
