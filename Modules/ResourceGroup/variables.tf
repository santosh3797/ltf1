variable "ResourceGroup" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
}
variable "prefix" {
  type        = string
  description = "prefix of the resource group"
  default     = "RG-"
}
