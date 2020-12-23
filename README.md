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

You'll need to set some secrets before you could deploy the pods, i.e.:

```bash
mv manifests/mongo-secret.yaml{.example,}
vim manifests/mongo-secret.yaml
```

And finally, deploy the kubernetes pods:

```bash
make deploy
```


## Useful commands

| Command                  | Description                             |
|--------------------------|-----------------------------------------|
| `kubectl get nodes`      | List all nodes.                         |
| `kubectl get pods`       | List all pods.                          |
| `kubectl describe nodes` | Get a verbose description of all nodes. |
