#/bin/bash
kubectl ctx cloud_okteto_com
./kustomize build overlays/prod | kubectl apply -f -
