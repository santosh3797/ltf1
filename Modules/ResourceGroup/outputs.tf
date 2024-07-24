output "rg_name_out" {
  value = resource.azurerm_resource_group.ResourceGroup.name
}

output "rg_location_out" {
  value = resource.azurerm_resource_group.ResourceGroup.location
}