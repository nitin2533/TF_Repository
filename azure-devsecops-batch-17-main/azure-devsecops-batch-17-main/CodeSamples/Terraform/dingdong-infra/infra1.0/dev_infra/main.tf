module "ge-rg" {
    source = "../../resource_group"
}

module "ge-storage" {
  source = "../../storage_account"
  depends_on = [ module.ge-rg ]
}