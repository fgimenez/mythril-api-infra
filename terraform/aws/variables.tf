#
# Variables Configuration
#

variable "cluster-name" {
  default = "terraform-eks-mythril-api"
  type    = "string"
}

variable "workers" {
  default = "2"
  type    = "string"
}
