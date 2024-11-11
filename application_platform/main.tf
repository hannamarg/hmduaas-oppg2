
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
    key                  = "app.tfstate"
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
/*
data "terraform_remote_state" "remote_project" {
  backend = "local"

  config = {
    path = "core_infrastructure/terraform.tfstate"
  }
}
*/

data "terraform_remote_state" "remote_project" {
  backend = "azurerm" 

  config = {
    storage_account_name = "sademobackendhmhd"
    container_name       = "tfstate"                 
    key                  = "core.tfstate"
    resource_group_name  = "rg-demo-backend-hmhd"
  }
}

data "terraform_remote_state" "global" {
  backend = "azurerm" 

  config = {
    storage_account_name = "sademobackendhmhd"
    container_name       = "tfstate"                 
    key                  = "global.tfstate"
    resource_group_name  = "rg-demo-backend-hmhd"
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

module "load_balancer" {
  source = "../modules/load_balancer"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  random_string       = data.terraform_remote_state.global.outputs.random_string
}

module "web_app" {
  source = "../modules/web_app"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  random_string       = data.terraform_remote_state.global.outputs.random_string
}