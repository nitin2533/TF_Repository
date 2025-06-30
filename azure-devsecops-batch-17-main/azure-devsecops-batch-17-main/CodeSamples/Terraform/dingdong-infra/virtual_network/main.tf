resource "azurerm_virtual_network" "gangu_vnet" {
  name                = "gangu_vnet"
  location            = "rg-dingdong"
  resource_group_name = "West Europe"
  address_space       = ["10.0.0.0/16"]
}