Pending phase includes time for:

- pulling image
- processing initContainers

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/sidecar/manifests/pending-running.yml

kubectl get pods

sleep 31

kubectl get pods`{{execute}}
