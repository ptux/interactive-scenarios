## kustomize

## sealed-secret

- Client side

`curl -L https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.9.2/kubeseal-linux-amd64 -o kubeseal
sudo install -m 755 kubeseal /usr/local/bin/kubeseal`{{execute}}

- Cluster side

`kubectl apply -f https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.9.2/controller.yaml`{{execute}}




      {
        "title": "Developers change app",
        "text": "dev1.md"
      },

      {
        "title": "Developers create PRs",
        "text": "dev3.md"
      },
      {
        "title": "PRs triger CI",
        "text": "ci.md"
      },
      {
        "title": "Developers merge PR",
        "text": "dev4.md"
      },
      {
        "title": "Merges triger CD",
        "text": "cd.md"
      }