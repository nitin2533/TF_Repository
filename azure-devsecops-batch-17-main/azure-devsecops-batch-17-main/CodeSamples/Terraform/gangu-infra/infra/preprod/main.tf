module "resource_group" {
  source = "../../azurerm_resource_group_chota"
}

module "storage_account" {
  source     = "../../azurerm_storage_account_chota"
  depends_on = [ module.resource_group ]
}
