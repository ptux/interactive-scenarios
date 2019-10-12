
## edit

`cd ~/hello-gitops-app
git checkout -b feature`{{execute}}


## commit in app repo

`cd ~/hello-gitops-app
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git commit . -m "hello gitops"`{{execute}}

## push

`git push ooocamel feature`{{execute}}

## Create PR

`echo -e "subject\n\nbody" | hub pull-request -F -`{{execute}}

## build image

check circle ci

## merge PR

`hub merge https://github.com/jingweno/gh/pull/73`{{execute}}