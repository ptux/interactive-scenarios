launch.sh
kubectl wait --for=condition=Ready node/master --timeout=600s