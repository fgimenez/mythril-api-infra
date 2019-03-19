provider "azurerm" {
  version = "~>1.5"
}

terraform {
  backend "azurerm" {
    storage_account_name = "mythrilapi"
    container_name       = "tfstate"
    key                  = "mythrilapi.production.tfstate"
  }
}
