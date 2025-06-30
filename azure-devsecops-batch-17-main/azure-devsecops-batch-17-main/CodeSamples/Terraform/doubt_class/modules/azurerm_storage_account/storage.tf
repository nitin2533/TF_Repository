resource "azurerm_storage_account" "storage_account" {
  for_each                 = var.storage_accounts
  name                     = each.value.storage_name
  resource_group_name      = each.value.storage_resource_group_name
  location                 = each.value.storage_location
  account_tier             = each.value.storage_account_tier
  account_replication_type = each.value.storage_account_replication_type
}
