
## create two pods in the same node

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/k8s-volume/manifests/hostpath.yaml`{{execute}}

## create a file from test-pd

`kubectl exec  -it test-pd -- touch /test-pd/ttt.txt`{{execute}}

## read the file form test-pd2

`kubectl exec  -it test-pd2 -- ls /test-pd`{{execute}}