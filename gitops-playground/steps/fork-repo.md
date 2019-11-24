## app repo

The app repository is for the application source code.

`hub clone https://github.com/ptux/hello-gitops-app.git ~/hello-gitops-app`{{execute}}

`cd ~/hello-gitops-app && hub fork`{{execute}}

`cd ~/hello-gitops-app && git remote set-url $GITHUB_USERNAME https://github.com/$GITHUB_USERNAME/hello-gitops-app.git`{{execute}}


## env repo

The env repository is for the manifests and config source files.

`hub clone https://github.com/ptux/hello-gitops-env.git ~/hello-gitops-env`{{execute}}

`cd ~/hello-gitops-env && hub fork`{{execute}}