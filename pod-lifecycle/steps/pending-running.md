Pending phase includes time for:

- pulling image
- processing initContainers

## create a pod

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/pending-running.yaml`{{execute}}

- pod stay in Pending phase within 30 secconds
- pod enter Running phase after 30 secconds

`kubectl get pod pending-running-pod -o json | jq '.status.phase'`{{execute}}
