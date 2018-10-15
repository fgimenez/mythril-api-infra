variable "client_id" {}
variable "client_secret" {}

variable "workers" {
  default = 3
}

variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCxx1nicPonyd8LroTkDXMw5Z7l/IXP5mojInbTx35o4x/HyImiHCakNwwGP/Dv5wwcFnepXPFB+sTPzoio15f/3Rux9Sb8x3oKyNVd99G09bDa0uPFkUrxPbZf2pNguRWZdVTbtbn9HdZn0N2zg9fDUQ6l07eoEPh+LiYmG21JU/sjI+ubUup0cXD19QQX3esA/pt91HFHfqTeJHzcB13klupqIEmL+Eg2ve+52hqngbAygMWoYAS1KQll8Hpm8FDH/hymkBul+1gD/JZzCf8hk6aDWwV1ucdH7kDpC2fXdTq2Z0Cgj1WwTwqHtygzhwtBd5IP2lk8DqkYZ7nbzxBVlgmZn06ZRI3UkBOH2O2WC78ScL0kCaIdD/IvtrDQ75RTqXf061hWMb6c5vD3t2RHB8Pkgkvs0SrH64mcfBoKnzXCSJvhfimeDTMuMbTzryNzNcfTcC3hT22iDeYs6fwWSFiyfH4RTK9ur5suWjBZ1HV3V5lw4L3oUEIQ1k+F8lX3lSVtg0V/jfTbHph6eLIZgk6V0Riz3ymwQwRHsRX1GnJvzZBTlBG0ZMdf24OAzYVZDhKeFH89EgDTa2y+xTKdNhQdCA68qjRQqQ9b1vM+J5ALM9bAFU+JdR7ho4BDP2IbaEEzPiEjeQzhYQcBZiqyCQiMyi3ATOXiLtApkFlUqw=="
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
