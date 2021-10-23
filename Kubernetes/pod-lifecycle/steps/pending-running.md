Pending phase includes time for:

- pulling image
- processing initContainers

## pod status

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/Kubernetes/pod-lifecycle/manifests/pending-running.yaml
kubectl get pods pending-running-pod --watch --request-timeout=60`{{execute}}

## pod phase - Running

`kubectl get pod pending-running-pod -o json | jq '.status.phase'`{{execute}}
