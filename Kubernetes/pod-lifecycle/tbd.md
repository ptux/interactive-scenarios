kubectl get pod pending-running-pod -o json | jq '.status.containerStatuses[].state'