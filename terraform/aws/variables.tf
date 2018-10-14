#
# Variables Configuration
#

variable "cluster-name" {
  default = "terraform-eks-mythril-api"
  type    = "string"
}

variable "workers" {
  default = "4"
  type    = "string"
}
