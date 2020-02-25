sidecar is a kind of multi-container pod.

## create a sidecar pod

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/sidecar.yaml`{{execute}}

## expose sidecar

`kubectl expose pod sidecar --port=80 --target-port=8000`{{execute}}

`kubectl get svc sidecar`{{execute}}

`kubectl get endpoints sidecar`{{execute}}

`kubectl exec -it sidecar -- sh rm /tmp/healthy`{{execute}}

`kubectl exec -it sidecar -- sh touch /tmp/healthy`{{execute}}