#/bin/bash
kubectl ctx kind-kind
./kustomize build overlays/dev | kubectl delete -f -
