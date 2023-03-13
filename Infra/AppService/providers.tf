terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"

  backend "azurerm" {
    resource_group_name  = "rg-dod-demo-tfstate"
    storage_account_name = "doddemotfstatestorage"
    container_name       = "tfstate"
  }
}

provider "azurerm" {
    features {}
}