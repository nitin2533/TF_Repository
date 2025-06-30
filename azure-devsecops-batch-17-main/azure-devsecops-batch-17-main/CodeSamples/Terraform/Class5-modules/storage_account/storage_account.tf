resource "azurerm_storage_account" "stg" {
  name                     = "dhondhustg"
  resource_group_name      = "rg-dhondhu"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_account" "stg1" {
  name                     = "dhondhustg1"
  resource_group_name      = "rg-titumama"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
