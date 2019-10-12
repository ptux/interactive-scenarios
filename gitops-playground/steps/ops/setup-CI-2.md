## add deploy key(public) with write to env repo

operation on: https://circleci.com

PERMISSIONS -> SSH Permissions -> Add SSH Key

`cd && ssh-keygen -t rsa -m pem -f hello-gitops`{{execute}}
`cat ~/hello-gitops`{{execute}}

`hub clone https://github.com/ptux/hello-gitops-env.git ~/hello-gitops-env`{{execute}}

`cd ~/hello-gitops-env && hub fork`{{execute}}

`cat ~/hello-gitops.pub`{{execute}}

operation on: https://github.com

hello-gitops-env -> settings -> keys