resource "azurerm_storage_account" "dingdongstorage" {
  name                     = "dingdongstorageprod"
  resource_group_name      = "rg-dingdong"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}