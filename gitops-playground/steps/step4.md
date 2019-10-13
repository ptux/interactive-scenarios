## create ssh key pair

`cd && ssh-keygen -t rsa -m pem -f hello-gitops -N ""`{{execute}}

## .circleci/config.yml

`FP=$(cd && ssh-keygen -E md5 -l -f hello-gitops.pub | cut -d" " -f2 | cut -d":" -f2-)`{{execute}}

`cd ~/hello-gitops-app && git checkout -b feature`{{execute}}
`sed -i -e "s/_FINGERPRINTS_/$FP/g" ~/hello-gitops-app/.circleci/config.yml`{{execute}}

## commit in app repo

```
cd ~/hello-gitops-app
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git commit . -m "add key fingerprint of env repo"
git push ooocamel
```
