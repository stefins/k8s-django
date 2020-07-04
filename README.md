[![Build Status](https://travis-ci.com/IamStefin/k8s-django.svg?branch=master)](https://travis-ci.com/IamStefin/k8s-django)

# k8s-django

Deploy your Django project in to a Kubernetes cluster.

Kubernetes config files can be found at k8s directory
## Initial setup

1. Create a Kubernetes cluster with your favorite provider
2. Download the k8s Config yaml file
3. Install `kubectl` using homebrew or your OS package manager
4. Export the file to the path by `export KUBECONFIG=~/Downloads/django-kubeconfig.yaml`

[Installing Helm](https://helm.sh/docs/intro/install/)

## Setting up træfik
```bash
helm repo add traefik https://containous.github.io/traefik-helm-chart
helm install traefik traefik/traefik
```
## Applying the configuration files

`kubectl apply -f k8s/`

## Contributing

Feel free to make this code better !
