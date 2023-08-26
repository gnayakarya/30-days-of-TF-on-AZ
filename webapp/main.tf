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

# resource "azurerm_resource_group" "resource_group" {
#   name     = "app-service-rg2"
#   location = "East US"
# }

# resource "azurerm_service_plan" "app_service_plan" {
#   name                = "example-appserviceplan"
#   location            = azurerm_resource_group.resource_group.location
#   resource_group_name = azurerm_resource_group.resource_group.name

#   sku {
#     tier = "Standard"
#     size = "S1"
#   }
# }

# resource "azurerm_app_service" "app_service" {
#   name                = "mywebapp-453627"
#   location            = azurerm_resource_group.resource_group.location
#   resource_group_name = azurerm_resource_group.resource_group.name
#   app_service_plan_id = azurerm_service_plan.app_service_plan.id
# }

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_service_plan" "example" {
  name                = "example"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku_name            = "P1v2"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "example" {
  name                = "gaurav-2717"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}