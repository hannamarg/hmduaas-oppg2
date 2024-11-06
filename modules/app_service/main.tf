
resource "azurerm_service_plan" "example" {
  name                = "app-service-${var.random_string}"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}