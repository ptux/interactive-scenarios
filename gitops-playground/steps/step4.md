## create ssh key pair

`cd && ssh-keygen -t rsa -m pem -f hello-gitops -N ""`{{execute}}

## add deploy key(private) on Circle CI

`cat ~/hello-gitops`{{execute}}

PERMISSIONS -> SSH Permissions -> Add SSH Key

## add deploy key(public) on Github
`hub clone https://github.com/ptux/hello-gitops-env.git ~/hello-gitops-env`{{execute}}

`cd ~/hello-gitops-env && hub fork`{{execute}}

`cat ~/hello-gitops.pub`{{execute}}

hello-gitops-env -> settings -> keys

## .circleci/config.yml

`FP=(ssh-keygen -E md5 -l -f hello-gitops.pub | cut -d" " -f2 | cut -d":" -f2-)`{{execute}}

`cd ~/hello-gitops-app && sed -i -e 's/$FP/_FINGERPRINTS_/g' .circleci/config.yml`
