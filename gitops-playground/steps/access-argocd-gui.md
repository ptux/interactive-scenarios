## access argocd gui

`kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'`{{execute}}
`kubectl get svc argocd-server -n argocd`{{execute}}