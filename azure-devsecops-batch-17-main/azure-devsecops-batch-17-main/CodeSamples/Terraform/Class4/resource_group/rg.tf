resource "azurerm_resource_group" "pilu-block" {
  name     = "rg-pilu"
  location = "West Europe"
}

resource "azurerm_resource_group" "tilu-block" {
  name     = "rg-tilu"
  location = "West Europe"
}