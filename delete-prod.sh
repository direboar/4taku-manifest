
#/bin/bash
kubectl ctx cloud_okteto_com
sudo cat ./base/database-secrets.yaml.secrets | sudo kubesec decrypt -i - > ./base/database-secrets.yaml
./kustomize build overlays/prod | kubectl delete -f -
