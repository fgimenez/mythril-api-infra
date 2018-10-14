terraform {
  backend "s3" {
    bucket = "mythril-api"
    key    = "eks/terraform"
    region = "us-east-1"
  }
}
