replace GITHUB_USERNAME
`GITHUB_USERNAME=ooocamel`{{execute}}

`ns=dev && kubectl create namespace $ns`{{execute}}

`argocd repo add https://github.com/$GITHUB_USERNAME/hello-gitops-env.git`{{execute}}

`argocd proj create $ns -d https://kubernetes.default.svc,$ns -s https://github.com/$GITHUB_USERNAME/hello-gitops-env.git`{{execute}}

`argocd app create $ns-hello-gitops \
  --repo https://github.com/$GITHUB_USERNAME/hello-gitops-env.git \
  --path overlays/$ns \
  --dest-server https://kubernetes.default.svc \
  --project $ns \
  --dest-namespace $ns \
  --auto-prune \
  --sync-policy automated`{{execute}}