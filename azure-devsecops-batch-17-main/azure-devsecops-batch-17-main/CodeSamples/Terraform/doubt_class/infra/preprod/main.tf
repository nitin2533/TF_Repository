variable "rgs" {}
variable "storageaccounts" {}

module "rg" {
  source = "../../modules/resource_group"
  rg_map = var.rgs
}

module "stg" {
  depends_on = [module.rg]
  source     = "../../modules/storage_account"
  storage_accounts = var.storageaccounts
}
