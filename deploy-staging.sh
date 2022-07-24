#/bin/bash
kubectl ctx cloud_okteto_com
# sudo cat ./base/database-secrets.yaml.secrets | sudo kubesec decrypt -i - > ./base/database-secrets.yaml
kubectl delete jobs.batch 4taku-batch.migrate-flyway
./kustomize build overlays/staging | kubectl apply -f -
