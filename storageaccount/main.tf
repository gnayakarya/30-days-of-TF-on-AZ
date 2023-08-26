terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {

  features {}

  subscription_id = "0fd8d403-ae7b-43e4-840a-5c4ff327c4cf"
  client_id       = "07b439ff-ef39-4b4c-b435-3522274e7c40"
  client_secret   = "XXXX"
  tenant_id       = "e0cd89e2-e12a-4dd8-8ee8-2efb3946dc4f"
}

resource "azurerm_resource_group" "example" {
  name     = "rg-day2-2"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                     = "maxrohit1"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}