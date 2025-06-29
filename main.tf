
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "2c68ed43-5abc-4e76-a2f4-b6b3f86d6b04"
}

resource "azurerm_resource_group" "nkrg" {
  name     = "nk-rg"
  location = "Japan East"
}

resource "azurerm_virtual_network" "nk-vnet" {
  name                = "nk-network"
  address_space       = ["192.168.0.0/16"]
  location            = azurerm_resource_group.nkrg.location
  resource_group_name = azurerm_resource_group.nkrg.name
}
resource "azurerm_public_ip" "nk-pip" {
  name                = "nk-public-ip"
  location            = azurerm_resource_group.nkrg.location
  resource_group_name = azurerm_resource_group.nkrg.name
  allocation_method   = "Dynamic"
  sku                 = "Basic"
}

resource "azurerm_public_ip" "nk-pip1" {
  name                = "nk-public-ip1"
  location            = azurerm_resource_group.nkrg.location
  resource_group_name = azurerm_resource_group.nkrg.name
  allocation_method   = "Dynamic"
  sku                 = "Basic"
}
resource "azurerm_subnet" "nk-frontend" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.nkrg.name
  virtual_network_name = azurerm_virtual_network.nk-vnet.name
  address_prefixes     = ["192.168.2.0/24"]
}
resource "azurerm_subnet" "nk-backend" {
  name                 = "backend"
  resource_group_name  = azurerm_resource_group.nkrg.name
  virtual_network_name = azurerm_virtual_network.nk-vnet.name
  address_prefixes     = ["192.168.3.0/24"]
}

resource "azurerm_network_interface" "nk" {
  name                = "nk-nic"
  location            = azurerm_resource_group.nkrg.location
  resource_group_name = azurerm_resource_group.nkrg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.nk-frontend.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id         = azurerm_public_ip.nk-pip.id
  }
}

resource "azurerm_network_interface" "nk1" {
  name                = "nk1-nic"
  location            = azurerm_resource_group.nkrg.location
  resource_group_name = azurerm_resource_group.nkrg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.nk-backend.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id         = azurerm_public_ip.nk-pip1.id
  }
}

resource "azurerm_linux_virtual_machine" "nk-vm2" {
  name                = "nk-backend"
  resource_group_name = azurerm_resource_group.nkrg.name
  location            = azurerm_resource_group.nkrg.location
  size                = "Standard_B1s"
  admin_username      = "devops"
  admin_password      = "devops@123"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nk1.id,
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}


resource "azurerm_linux_virtual_machine" "nk-vm1" {
  name                = "nk-frontend"
  resource_group_name = azurerm_resource_group.nkrg.name
  location            = azurerm_resource_group.nkrg.location
  size                = "Standard_B1s"
  admin_username      = "devops"
  admin_password      = "evops@123"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nk.id,
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
