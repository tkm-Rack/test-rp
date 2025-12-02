resource "azurerm_resource_group" "rg" {
  name     = "test-rg-${var.location}"
  location = var.location
}
