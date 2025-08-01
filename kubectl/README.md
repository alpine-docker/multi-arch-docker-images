# alpine/kubectl

[If enjoy, please consider buying me a coffee.](https://www.buymeacoffee.com/ozbillwang)

Alpine-based image with kubectl

This image provides a minimal Alpine Linux container with kubectl installed, supporting multiple architectures.

## Usage

* with `docker run`
```console
$ docker run --rm alpine/kubectl version --client
```

Or use it as alias command

```console
$ alias kubectl='docker run --rm -v ~/.kube:/root/.kube -v $(pwd):/workspace -w /workspace alpine/kubectl'
$ kubectl get pods
```

* With `docker-compose.yml`

```yaml
version: '3'
services:
  kubectl:
    image: alpine/kubectl
    volumes:
      - ~/.kube:/root/.kube
      - .:/workspace
    working_dir: /workspace
    command: get pods
```

## Features

- Multi-architecture support (amd64, arm64, arm, s390x, ppc64le)
- Latest stable kubectl version
- Minimal Alpine Linux base image
- Kubectl configuration volume mounting support

## Common Commands

```console
# Get cluster info
$ docker run --rm -v ~/.kube:/root/.kube alpine/kubectl cluster-info

# Get all pods
$ docker run --rm -v ~/.kube:/root/.kube alpine/kubectl get pods --all-namespaces

# Apply a configuration
$ docker run --rm -v ~/.kube:/root/.kube -v $(pwd):/workspace -w /workspace alpine/kubectl apply -f deployment.yaml

# Get nodes
$ docker run --rm -v ~/.kube:/root/.kube alpine/kubectl get nodes

# Describe a pod
$ docker run --rm -v ~/.kube:/root/.kube alpine/kubectl describe pod <pod-name>
```

## Configuration

To use kubectl with your Kubernetes cluster, you need to mount your kubeconfig file:

```console
$ docker run --rm -v ~/.kube:/root/.kube alpine/kubectl get nodes
```

Or if your kubeconfig is in a different location:

```console
$ docker run --rm -v /path/to/your/kubeconfig:/root/.kube/config alpine/kubectl get nodes
```
