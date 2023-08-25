terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-sampleApi" {
  name     = "rg-sample-api"
  location = "East US"
}

resource "azurerm_storage_account" "stgacct" {
  name                     = "stgacct"
  resource_group_name      = azurerm_resource_group.rg-sampleApi.name
  location                 = azurerm_resource_group.rg-sampleApi.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}