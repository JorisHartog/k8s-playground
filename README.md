# Kubernetes playground

This repository contains a simple Kubernetes cluster. By default, it configures
three CentOS 8 nodes: one master and two worker nodes.

## Install

Install any missing dependencies using your favorite package manager:

```bash
brew install vagrant virtualbox ansible
```

Now simply setup the cluster by using Vagrant:

```bash
vagrant up
```

## Useful commands

| Command                  | Description                             |
|--------------------------|-----------------------------------------|
| `kubectl get nodes`      | List all nodes.                         |
| `kubectl get pods`       | List all pods.                          |
| `kubectl describe nodes` | Get a verbose description of all nodes. |
