## Circle CI Settings

https://circleci.com

1. Login with Github -> ADD PROJECTS -> Set Up Project -> Start building

failed due to lack of env

2. BUILD SETTINGS -> Environment Variables -> Add Variable

- DOCKER_LOGIN
- DOCKER_PASSWORD
- GITHUB_USERNAME

3. BUILD SETTINGS -> Advanced Settings -> Only build pull requests[on]

## add deploy key(private)

https://circleci.com
```
PERMISSIONS -> SSH Permissions -> Add SSH Key
```
Hostname: github.com

Private Key:
`cat ~/hello-gitops`{{execute}}

## add deploy key(public)

`hub clone https://github.com/ptux/hello-gitops-env.git ~/hello-gitops-env`{{execute}}

`cd ~/hello-gitops-env && hub fork`{{execute}}


https://github.com
```
hello-gitops-env -> Settings -> Deploy keys

Title: forCircleCI
Key:
```
`cat ~/hello-gitops.pub`{{execute}}

[✔︎]Allow write access

## Create PR

`cd ~/hello-gitops-app && echo -e "subject\n\nbody" | hub pull-request -b ooocamel:master -F -`{{execute}}

## check CI

## merge PR

`hub merge https://github.com/ooocamel/hello-gitops-app/pull/1`{{execute}}
`git push`
