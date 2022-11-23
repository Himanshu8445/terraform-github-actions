terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.91.0"
    }
  }
}

backend "azurerm" {
    resource_group_name  = "tftstaterg"
    storage_account_name = "tfstatestracc"
    container_name       = "tfstate-container"
    key                  = "test.tfstate"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "this" {
    name     = "data-rg"
    location = "Central US"
}