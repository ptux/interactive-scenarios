`kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`{{execute}}

`sudo curl -L https://github.com/argoproj/argo-cd/releases/download/v1.2.3/argocd-linux-amd64 -o /usr/local/bin/argocd
sudo chmod +x /usr/local/bin/argocd`{{execute}}