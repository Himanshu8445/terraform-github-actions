terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.91.0"
    }
  }
}

provider "azurerm" {
  features {}
}

backend "azurerm" {
    resource_group_name  = ""
    storage_account_name = ""
    container_name       = ""
    key                  = ""
}

resource "azurerm_resource_group" "this" {
    name     = "data-rg"
    location = "Central US"
}