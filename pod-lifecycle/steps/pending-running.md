Pending phase includes time for:

- pulling image
- processing initContainers

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/pending-running.yaml`{{execute}}

## Within 30 secconds

container stays in running status within 30 secconds
pod stays in Pending phase within 30 secconds

`kubectl get pod pending-running-pod -o json | jq '.status.phase'
kubectl get pod pending-running-pod -o json | jq '.status.containerStatuses[].state'`{{execute}}

## After 30 secconds

container enters waiting status after 30 secconds
pod enters Running phase after 30 secconds

`kubectl get pod pending-running-pod -o json | jq '.status.phase'
kubectl get pod pending-running-pod -o json | jq '.status.containerStatuses[].state'`{{execute}}
