#/bin/bash
kubectl ctx kind-kind
sudo cat ./base/database-secrets.yaml.secrets | sudo kubesec decrypt -i - > ./base/database-secrets.yaml
./kustomize build overlays/dev | kubectl delete -f -
