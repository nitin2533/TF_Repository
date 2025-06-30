provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_resource_group" "example2" {
  name     = "example-resources-2"
  location = "East US"
}

resource "azurerm_resource_group" "example3" {
  name     = "example-resources-3"
  location = "Central US"
}
