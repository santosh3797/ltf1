variable "ResourceGroup" {
  type        = string
  description = "Resource group name"
}
variable "storageaccountname" {
  type        = string
  description = "Storage account name"
}
variable "location" {
  type        = string
  description = "location of the resource group"
}
variable "prefix" {
  type         = string
  default      = "stg"
  description  = "asdas"
}
variable "access_tier" {
  type         = string
  description  = "Access tier of the storage account"
}

variable "Replication_type" {
  type = string
  description = "replication type"
}
