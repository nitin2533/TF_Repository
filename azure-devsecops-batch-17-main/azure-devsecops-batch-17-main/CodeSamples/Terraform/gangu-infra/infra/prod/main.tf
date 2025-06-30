module "resource_group" {
  source = "../../azurerm_resource_group_badka"
}

module "storage_account" {
  source     = "../../azurerm_storage_account_badka"
  depends_on = [ module.resource_group ]
}
