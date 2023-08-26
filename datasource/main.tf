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
  client_secret   = "27U8Q~KTzoiiExk5eetJRrWbEbVAM2tltK7ifa6X"
  tenant_id       = "e0cd89e2-e12a-4dd8-8ee8-2efb3946dc4f"

}

data "azurerm_public_ip" "example" {
  name                = "mypip-datarg"
  resource_group_name = "datarg"
}

output "pip_info" {
  value = data.azurerm_public_ip.example
}