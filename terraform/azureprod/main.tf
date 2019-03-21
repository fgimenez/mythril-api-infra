provider "azurerm" {
  version = "~>1.5"
}

terraform {
  backend "azurerm" {
    storage_account_name = "mythx"
    container_name       = "tfstate"
    key                  = "mythx.production.tfstate"
  }
}
