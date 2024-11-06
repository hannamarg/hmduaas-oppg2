resource "azurerm_storage_account" "example" {
  name                     = "storageaccount${var.random_string}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# dette legges til etter apply, det funker ikke uten eksisterende storage account
/*
data "azurerm_storage_account" "example" {
  name                = "storage${var.random_string}"
  resource_group_name = var.resource_group_name
}

// vet ikke om trengs
output "storage_account_tier" {
  value = data.azurerm_storage_account.example.account_tier
} 
*/