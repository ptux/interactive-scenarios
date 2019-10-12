## fork app repo

`hub clone https://github.com/ptux/hello-gitops-app.git ~/hello-gitops-app`{{execute}}

`cd ~/hello-gitops-app && hub fork`{{execute}}

```
github.com username: xxxxxxx
github.com password for xxxxxxx (never stored):
Updating xxxxxxx
From https://github.com/ptux/hello-gitops-env
 * [new branch]      master     -> xxxxxxx/master
new remote: xxxxxxx
```

`GITHUB_USERNAME=ooocamel`{{execute}}
`cd ~/hello-gitops-app
git remote set-url ooocamel https://github.com/$GITHUB_USERNAME/hello-gitops-app.git`{{execute}}


## edit

`cd ~/hello-gitops-app
git checkout -b feature`{{execute}}
