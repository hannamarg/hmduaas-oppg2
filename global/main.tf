
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-demo-backend-hmhd"
    storage_account_name = "sademobackendhmhd"
    container_name       = "tfstate"
    key                  = "global.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "a3adf20e-4966-4afb-b717-4de1baae6db1"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "random" {}

resource "random_string" "random_string" {
  length  = 6
  special = false
  upper   = false
}