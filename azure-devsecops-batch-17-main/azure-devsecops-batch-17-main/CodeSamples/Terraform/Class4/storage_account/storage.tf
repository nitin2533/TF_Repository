resource "azurerm_storage_account" "stg" {
  name                     = "devops76843"
  resource_group_name      = "rg-pilu"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
