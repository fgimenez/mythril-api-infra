variable "client_id" {}
variable "client_secret" {}

variable "workers" {
    default = 3
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "mythril-api"
}

variable cluster_name {
    default = "mythril-api"
}

variable resource_group_name {
    default = "azure-mythril-api"
}

variable location {
    default = "Central US"
}

variable "k8s_version" {
    default = "1.11.3"
}
