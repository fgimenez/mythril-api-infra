#!/bin/bash
set -xe

PROVIDER=${1:-aws}
WORKERS=${2:-4}

cd ./terraform/${PROVIDER}
terraform init
terraform apply -auto-approve -var workers=${WORKERS}

terraform output kubeconfig | tee kubeconfig-${PROVIDER}.yaml
export KUBECONFIG=$(pwd)/kubeconfig-${PROVIDER}.yaml

if [ "${PROVIDER}" = aws ]; then
    terraform output config_map_aws_auth | tee configmap-aws-auth.yaml

    cat iam-users.yaml | tee -a configmap-aws-auth.yaml

    kubectl apply -f ./configmap-aws-auth.yaml
    kubectl apply -f ./storageclass.yaml

elif [ "${PROVIDER}" = azure ]; then
    kubectl apply --validate=false -f ./cluster-roles.yaml

    kubectl apply -f ./cluster-role-bindings.yaml
fi
