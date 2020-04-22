sidecar is a kind of multi-container pod.

## create a sidecar pod

`kubectl apply -f https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/pod-lifecycle/manifests/sidecar.yaml`{{execute}}

`kubectl wait --for=condition=Ready pod/sidecar-pod`{{execute}}

## expose sidecar

`kubectl expose pod sidecar-pod --port=80 --target-port=8000`{{execute}}

`kubectl get svc sidecar-pod`{{execute}}

`kubectl get endpoints sidecar-pod`{{execute}}

## pod will be removed from endpoints when unready

`kubectl exec -it sidecar-pod -c sidecar -- rm /tmp/healthy`{{execute}}

`kubectl get endpoints sidecar-pod`{{execute}}

`kubectl exec -it sidecar-pod -c sidecar -- touch /tmp/healthy`{{execute}}

`kubectl get endpoints sidecar-pod`{{execute}}
