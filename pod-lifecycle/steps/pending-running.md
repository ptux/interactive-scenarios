Pending phase includes time for:

- pulling image
- processing initContainers

## create a pod with initContainer

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/pending-running.yaml`{{execute}}

## from Pending to Running phase

`kubectl get pod pending-running-pod -o json | jq '.status.phase'`{{execute}}
