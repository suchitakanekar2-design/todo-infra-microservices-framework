terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "generic-rg"
    storage_account_name = "generics123"
    container_name       = "generic-storage"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9f14d6da-b117-434d-922f-f763c8ec88bb"
}
