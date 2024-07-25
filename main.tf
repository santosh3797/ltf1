terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.113.0"
    }
  }
}

provider "azurerm" {
 features {
   
 }
client_id           = "1205f7c0-d124-4e69-b52a-fe107e240b3b"
client_secret       = "eRy8Q~dp6~5l.Yi1wZoF2pPKEzMsHanBWouj0ap8"
tenant_id           = "c38fc1f0-9f9f-4169-b644-b68c800d5de4"
subscription_id     = "c9193a88-50ba-4422-8804-4847d3b212e9"
}

module "ResourceGroup" {
  source             = "./Modules/ResourceGroup"
  ResourceGroup      = var.rgname
  location           = var.location
}

module "StorageAccount" {
  depends_on         = [ module.ResourceGroup ]
  source             = "./Modules/StorageAccount"
  storageaccountname = var.storageaccountname
  ResourceGroup      = module.ResourceGroup.rg_name_out
  location           = var.location
  access_tier        = var.access_tier
  Replication_type   = var.Replication_type
  
}

module "vnet" {
  source                 = "./Modules/VirtualNetwork"
  vnetName               = var.vnetName
  location               = var.location
  resourceGroup          = module.ResourceGroup.rg_name_out
  addressSpace           = var.addressSpace

}

/*module "subnet" {
  source            = "./Modules/Subnet"
  subnetname        = var.subnetname
  resourceGroup     = var.rgname
  location          = var.location
  vnetName          = var.vnetName
  addressPrefix     = var.addressPrefix

}*/


