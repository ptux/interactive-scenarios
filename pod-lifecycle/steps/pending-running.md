Pending phase includes time for:

- pulling image
- processing initContainers

`
kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/pending-running.yaml
echo "container status:"
kubectl describe pod pending-running-pod | grep -A1 Stat
kubectl get pod
echo "pod status:"
kubectl describe pod pending-running-pod | grep Status`{{execute}}

Wait 30 secconds and execute following command.
Pod will enter running phase.

container status:
`kubectl describe pod pending-running-pod | grep -A1 State
kubectl get pod`{{execute}}

pod status:
`kubectl describe pod pending-running-pod| grep Status`{{execute}}
