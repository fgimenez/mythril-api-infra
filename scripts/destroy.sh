#!/bin/bash
set -xe

PROVIDER=${1:-aws}

cd ./terraform/${PROVIDER}

terraform destroy
