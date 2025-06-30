module "resource_group" {
  source      = "../../modules/azurerm_resource_group"
  rg_name     = "rg-ghoda"
  rg_location = "westus"
}

module "vnet" {
  source        = "../../modules/azurerm_virtual_network"
  vnet_name     = "vnet-ghoda"
  location      = "westus"
  address_space = ["10.0.0.0/16"]
  rg_name       = "rg-ghoda"
}
