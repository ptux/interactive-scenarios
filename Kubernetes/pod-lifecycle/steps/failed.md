Pod enters Failed phase when:

All Containers in the Pod have terminated, and at least one Container has terminated in failure.  
That is, the Container either exited with non-zero status or was terminated by the system.  

## pod status

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/failed.yaml
kubectl get pods failed-pod --watch --request-timeout=30`{{execute}}

## pod phase - Failed

`kubectl get pod failed-pod -o json | jq '.status.phase'`{{execute}}
