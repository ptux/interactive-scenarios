`hub clone https://github.com/ptux/hello-gitops-app.git ~/hello-gitops-app`{{execute}}

`cd ~/hello-gitops-app && hub fork`{{execute}}

Replace `ptux` with your GITHUB_USERNAME and then execute.

`GITHUB_USERNAME=ptux`

`cd ~/hello-gitops-app && git remote set-url $GITHUB_USERNAME https://github.com/$GITHUB_USERNAME/hello-gitops-app.git`{{execute}}
