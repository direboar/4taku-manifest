#/bin/bash
kubectl ctx kind-kind
kubectl delete jobs.batch 4taku-batch.migrate-flyway
./kustomize build overlays/dev | kubectl apply -f -
