## setup circle CI

1. Enable Circle CI building

2. add deploy key(private) with write

`cd && ssh-keygen -t rsa -m pem -f hello-gitops
cat ~/hello-gitops`{{execute}}

3. replace fingerprints in `.circleci/config.yml`

4. add deploy key(public) with write to env repo

`hub clone https://github.com/ptux/hello-gitops-env.git ~/hello-gitops-env`{{execute}}

`cd ~/hello-gitops-env && hub fork`{{execute}}

`cat ~/hello-gitops.pub`{{execute}}

go to: https://github.com/`GITHUB_USERNAME`/hello-gitops-env/settings/keys