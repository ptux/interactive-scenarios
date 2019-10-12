
## clone and fork app repo

`hub clone https://github.com/ptux/hello-gitops-app.git ~/hello-gitops-app`{{execute}}

`cd ~/hello-gitops-app
hub fork`{{execute}}

`GITHUB_USERNAME=ooocamel`{{execute}}
`cd ~/hello-gitops-app
git remote set-url ooocamel https://github.com/$GITHUB_USERNAME/hello-gitops-app.git`{{execute}}


1. Enable Circle CI building
2. Add ssh private key with write permisson for hello-gitops-env on Circle CI
3. memo fingerprints


## edit

`cd ~/hello-gitops-app
git checkout -b feature`{{execute}}

replace fingerprints in `config.yml`

## clone and fork env repo

`hub clone https://github.com/ptux/hello-gitops-env.git ~/hello-gitops-env`{{execute}}

`cd ~/hello-gitops-env
hub fork`{{execute}}

Add ssh public key with write permisson for hello-gitops-env on GitHub