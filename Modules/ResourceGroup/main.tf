resource "azurerm_resource_group" "ResourceGroup" {
  name        = "${var.prefix}${var.ResourceGroup}"
  location    = var.location
}