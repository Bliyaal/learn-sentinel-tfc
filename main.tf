provider "azurerm" {
  features {
  }
  skip_provider_registration = true

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "example" {
  name     = "tfcloud"
  location = "Canada Central"
}

resource "azurerm_servicebus_namespace" "example" {
  name                = "sylm-tfcloud"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Premium"
}