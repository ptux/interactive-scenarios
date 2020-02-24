Pending phase includes time for:

- pulling image
- processing initContainers

`
kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/pending-running.yaml
kubectl get pod
kubectl describe pod pending-running-pod| grep Status`{{execute}}

Wait 30 secconds and execute following command.
Pod will enter running phase.

`kubectl get pod
kubectl describe pod pending-running-pod| grep Status`{{execute}}
