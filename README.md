### mythril-api-infra

Readies Azure and AWS clusters for API deployment staging/production. Terraform files are used to managed each environment under `terraform\${PROVIDER}`. 

Azure: hosts the staging environment. [Configuration](https://github.com/ConsenSys/mythril-api-infra/tree/master/terraform/azure)

AWS: hosts the production environment. [Configuration](https://github.com/ConsenSys/mythril-api-infra/tree/master/terraform/aws)

CircleCI: Upon merge to `master` CircleCI creates the infrastructure and does basic validation on the configuration using `terraform validate` and `terraform plan`.