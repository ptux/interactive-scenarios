Pod enters Succeeded phase when:

All Containers in the Pod have terminated in success, and will not be restarted.

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/succeeded.yaml`{{execute}}

container status:
`kubectl describe pod succeeded-pod | grep -A1 State
kubectl get pod`{{execute}}

pod status:
`kubectl describe pod succeeded-pod | grep Status`{{execute}}
