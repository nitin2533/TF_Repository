variable "rg_ki_details" {}

resource "azurerm_resource_group" "rgs" {
  for_each = var.rg_ki_details
  name     = each.value.rg_name
  location = each.value.rg_location
}
