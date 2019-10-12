## setup ArgoCD

`kubectl port-forward svc/argocd-server -n argocd 8080:443`{{execute}}

`kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2`{{execute}}

`argocd login --insecure localhost:8080`{{execute}}

```
Username: admin
Password: 

'admin' logged in successfully
Context 'localhost:8080' updated
```

`ns=dev
GITHUB_USERNAME=ooocamel`{{execute}}

`kubectl create namespace $ns`{{execute}}

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

`kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'`{{execute}}
