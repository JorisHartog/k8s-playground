# Kubernetes playground

This repository contains a simple Kubernetes cluster. By default, it configures
three CentOS 8 nodes: one master and two worker nodes.

## Install

Install any missing dependencies:

```bash
make deps
```

Now simply setup the cluster:

```bash
make cluster
```

## Useful commands

| Command                  | Description                             |
|--------------------------|-----------------------------------------|
| `kubectl get nodes`      | List all nodes.                         |
| `kubectl get pods`       | List all pods.                          |
| `kubectl describe nodes` | Get a verbose description of all nodes. |
