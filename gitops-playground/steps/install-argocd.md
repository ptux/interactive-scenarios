Download install yaml for ArgoCD

`curl -L https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml > ~/argocd-install.yaml`{{execute}}

Install ArgoCD in k8s

`kubectl create namespace argocd
kubectl apply -n argocd -f ~/argocd-install.yaml`{{execute}}

Install ArgoCD client

`ARGOCD_VERSION=$(cat ~/argocd-install.yaml | grep -m1 argoproj/argocd | cut -d ":" -f3)
sudo curl -L https://github.com/argoproj/argo-cd/releases/download/$ARGOCD_VERSION/argocd-linux-amd64 -o /usr/local/bin/argocd
sudo chmod +x /usr/local/bin/argocd`{{execute}}

