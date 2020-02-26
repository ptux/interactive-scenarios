Pod enters Failed phase when:

All Containers in the Pod have terminated, and at least one Container has terminated in failure.  
That is, the Container either exited with non-zero status or was terminated by the system.  

## create a pod with exit status 1

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/failed.yaml
kubectl get pods failed-pod --watch --request-timeout=30`{{execute}}


## Failed phase

`kubectl get pod failed-pod -o json | jq '.status.phase'`{{execute}}

https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#pod-phase