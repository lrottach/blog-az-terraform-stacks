locals {
  rg_name = "rg-${var.project_identifier}"
}

// Azure Resource Group
resource "azurerm_resource_group" "this" {
  name     = local.rg_name
  location = var.deployment_location
}
