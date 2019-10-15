`kubectl port-forward svc/argocd-server -n argocd 8080:443`{{execute}}

`kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2`{{execute}}

`argocd login --insecure localhost:8080`{{execute}}

> Username: admin
> Password: 
> 'admin' logged in successfully
> Context 'localhost:8080' updated
