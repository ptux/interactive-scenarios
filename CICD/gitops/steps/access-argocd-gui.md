`kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'`{{execute}}
`kubectl get svc argocd-server -n argocd`{{execute}}

> Select port to view on Host 1

> Display port Nodeport