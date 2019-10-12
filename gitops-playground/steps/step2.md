## argocd

`kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`{{execute}}

`sudo curl -L https://github.com/argoproj/argo-cd/releases/download/v1.2.3/argocd-linux-amd64 -o /usr/local/bin/argocd
sudo chmod +x /usr/local/bin/argocd`{{execute}}

## hub

`curl -L https://github.com/github/hub/releases/download/v2.12.8/hub-linux-amd64-2.12.8.tgz | tar zx
sudo ./hub-linux-amd64-2.12.8/install`{{execute}}

`hub version`{{execute}}
