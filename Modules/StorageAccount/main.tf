resource "azurerm_resource_group" "ResourceGroup" {
  name     = var.ResourceGroup
  location = var.location
}

resource "azurerm_storage_account" "StorageAccount" {
  name                     = "${var.prefix}${lower(var.storageaccountname)}"
  resource_group_name      = azurerm_resource_group.ResourceGroup.name
  location                 = azurerm_resource_group.ResourceGroup.location
  account_tier             = var.access_tier
  account_replication_type = var.Replication_type
}
