# GitOps playground

This tutorial shows how to create a CI/CD pipeline using the GitOps methodology.

A key point of GitOps is the idea of "environments-as-code".

## Prerequisites

This tutorial could be done in free tier of each service.

- `GitHub` for hosting 2 public repo
- `Circle CI` for building and pushing docker image
- `Docker Hub` for hosting 1 public image repo
- `Katacoda` for using configured k8s

![gitops-overview](https://raw.githubusercontent.com/ptux/katacoda-scenarios/master/gitops-playground/gitops-overview.png)