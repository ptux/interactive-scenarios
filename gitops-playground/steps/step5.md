## create ssh key pair

`cd && ssh-keygen -t rsa -m pem -f hello-gitops -N ""`{{execute}}

## add deploy key(private)

```
https://circleci.com
PERMISSIONS -> SSH Permissions -> Add SSH Key
```

`cat ~/hello-gitops`{{execute}}

## add deploy key(public)

```
https://github.com
hello-gitops-env -> settings -> keys
```

`hub clone https://github.com/ptux/hello-gitops-env.git ~/hello-gitops-env`{{execute}}

`cd ~/hello-gitops-env && hub fork`{{execute}}

`cat ~/hello-gitops.pub`{{execute}}

## .circleci/config.yml

`cd ~/hello-gitops-app && git checkout -b feature`{{execute}}

`FP=$(cd && ssh-keygen -E md5 -l -f hello-gitops.pub | cut -d" " -f2 | cut -d":" -f2-)`{{execute}}

`sed -i -e "s/_FINGERPRINTS_/$FP/g" ~/hello-gitops-app/.circleci/config.yml`{{execute}}

## commit in app repo

cd ~/hello-gitops-app
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git commit . -m "hello gitops"
git push ooocamel feature

## Create PR

`echo -e "subject\n\nbody" | hub pull-request -F -`{{execute}}

## check CI
