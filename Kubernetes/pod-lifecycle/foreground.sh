launch.sh
kubectl wait --for=condition=Ready node/controlplane --timeout=600s