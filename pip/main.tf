provider "azurerm" {
  skip_provider_registration = "true"
  features {}

  subscription_id = "0fd8d403-ae7b-43e4-840a-5c4ff327c4cf"
  client_id       = "07b439ff-ef39-4b4c-b435-3522274e7c40"
  client_secret   = "XXXX"
  tenant_id       = "e0cd89e2-e12a-4dd8-8ee8-2efb3946dc4f"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg2"
  location = "West Europe"
}

resource "azurerm_public_ip" "pip" {
  name                = "pip1"
  resource_group_name = "rg2"
  location            = "West Europe"
  allocation_method   = "Static"
}

output "publicip" {
  value = azurerm_public_ip.pip.ip_address
}