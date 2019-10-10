# Install gitops tools

## argocd

`kubectl create namespace argocd`{{execute}}

`kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`{{execute}}

## kustomize

## sealed-secret

