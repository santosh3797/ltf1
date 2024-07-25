
resource "azurerm_virtual_network" "vnet" {  
  name                = var.vnetName
  location            = var.location
  resource_group_name = var.resourceGroup
  address_space       = var.addressSpace
}

