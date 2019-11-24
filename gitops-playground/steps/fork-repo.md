`hub clone https://github.com/ptux/hello-gitops-app.git ~/hello-gitops-app`{{execute}}

`cd ~/hello-gitops-app && hub fork`{{execute}}

`cd ~/hello-gitops-app && git remote set-url $GITHUB_USERNAME https://github.com/$GITHUB_USERNAME/hello-gitops-app.git`{{execute}}

`hub clone https://github.com/ptux/hello-gitops-env.git ~/hello-gitops-env`{{execute}}

`cd ~/hello-gitops-env && hub fork`{{execute}}