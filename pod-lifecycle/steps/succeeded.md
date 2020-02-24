Pod enters Succeeded phase when:

All Containers in the Pod have terminated in success, and will not be restarted.

## create a pod with exit status 0

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/succeeded.yaml`{{execute}}

## Succeeded phase

`kubectl get pod pending-running-pod -o json | jq '.status.phase'`{{execute}}
