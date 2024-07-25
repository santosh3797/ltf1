resource "azurerm_subnet" "subnet" {
  count                = length(var.subnetname)
  name                 = var.subnetname[count.index].name
  resource_group_name  = var.resourceGroup
  virtual_network_name = var.vnetName
  address_prefixes     = [var.addressPrefix[count.index].addressPrefix]
}