#!/bin/bash
set -xe

PROVIDER=${1:-aws}
WORKERS=${2:-12}

if [ "${PROVIDER}" = azureprod ]; then
    WORKERS=24
fi

cd ./terraform/${PROVIDER}
terraform init
terraform apply -auto-approve -var workers=${WORKERS}

terraform output kubeconfig | tee kubeconfig-${PROVIDER}.yaml
export KUBECONFIG=$(pwd)/kubeconfig-${PROVIDER}.yaml

kubectl apply --validate=false -f ./cluster-roles.yaml

kubectl apply -f ./cluster-role-bindings.yaml

kubectl apply -f ./storageclass.yaml

kubectl apply -f ./metrics-server/
