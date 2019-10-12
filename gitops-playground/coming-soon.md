## kustomize

## sealed-secret

- Client side

`wget https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.9.2/kubeseal-linux-amd64 -O kubeseal
sudo install -m 755 kubeseal /usr/local/bin/kubeseal`{{execute}}

- Cluster side

`kubectl apply -f https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.9.2/controller.yaml`{{execute}}