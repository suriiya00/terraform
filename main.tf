terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "azure_infra" {
  source              = "./modules/azure_infra"
  resource_group_name = "rg-sep17"
  vnet_name           = "vnet-sep17"
  subnet_name         = "subnet1-vnet-sep17"
}
