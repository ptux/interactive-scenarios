Pod enters Succeeded phase when:

All Containers in the Pod have terminated in success, and will not be restarted.

`
kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/succeeded.yaml
kubectl get pod
kubectl describe pod succeeded-pod | grep Status`{{execute}}
