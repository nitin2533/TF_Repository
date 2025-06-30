variable "snet_name" {
  description = "The name of the subnet"
  type        = string
}

resource "azurerm_subnet" "example" {
  name                 = var.snet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = ["10.0.1.0/24"]
}