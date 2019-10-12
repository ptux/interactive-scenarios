## argocd

`kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`{{execute}}

`sudo curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/download/v1.2.3/argocd-linux-amd64
sudo chmod +x /usr/local/bin/argocd`{{execute}}

## kustomize

## sealed-secret

- Client side

`wget https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.9.2/kubeseal-linux-amd64 -O kubeseal
sudo install -m 755 kubeseal /usr/local/bin/kubeseal`{{execute}}

- Cluster side

`kubectl apply -f https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.9.2/controller.yaml`{{execute}}

## hub

`wget https://github.com/github/hub/releases/download/v2.12.8/hub-linux-amd64-2.12.8.tgz
tar zvxvf hub-linux-amd64-2.12.8.tgz
sudo ./hub-linux-amd64-2.12.8/install`{{execute}}

`hub version`{{execute}}
