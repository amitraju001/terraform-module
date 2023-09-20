# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.71.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}

module "idm_resource_group"{
    source = "./modules/az-rg"
    instances = var.rgroups
}