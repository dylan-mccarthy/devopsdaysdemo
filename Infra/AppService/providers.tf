terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.46.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-dod-demo-tfstate"
    storage_account_name = "doddemotfstatestorage"
    container_name       = "tfstate"
  }
}

provider "azurerm" {
    features {}
}