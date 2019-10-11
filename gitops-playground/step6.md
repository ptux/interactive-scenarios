## ArgoCD

`ns=dev
github_username=ptux`{{execute}}

`kubectl create namespace $ns`{{execute}}

`argocd repo add https://github.com/$github_username/hello-gitops-env.git`{{execute}}

`argocd proj create $ns -d https://kubernetes.default.svc,$ns -s https://github.com/$github_username/hello-gitops-env.git`{{execute}}

`argocd app create $ns-hello-gitops \
  --repo https://github.com/$github_username/hello-gitops-env.git \
  --path overlays/$ns \
  --dest-server https://kubernetes.default.svc \
  --project $ns \
  --dest-namespace $ns \
  --auto-prune \
  --sync-policy automated`{{execute}}

## merge PR

`hub merge https://github.com/jingweno/gh/pull/73`{{execute}}