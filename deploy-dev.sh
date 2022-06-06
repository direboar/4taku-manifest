
#/bin/bash
kubectl ctx kind-kind
./kustomize build overlays/dev | kubectl apply -f -
