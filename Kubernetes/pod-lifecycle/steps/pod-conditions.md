A Pod has a PodStatus, which has an array of PodConditions through which the Pod has or has not passed.

## create a pod with signle container

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/single-container.yaml`{{execute}}

`kubectl get pod single-container-pod -o json | jq '.status.conditions'`{{execute}}

## create a pod with multi container

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/multi-container.yaml`{{execute}}

`kubectl get pod multi-container-pod -o json | jq '.status.conditions'`{{execute}}
