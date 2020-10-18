# What's next

How restartPolicy affect pod phase?

## Reference

https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/

https://cstoku.dev/posts/2018/k8sdojo-06/


## TBD

- container status [tbd]
- sidecar pattern [tbd]

kubectl get pod pending-running-pod -o json | jq '.status.containerStatuses[].state'