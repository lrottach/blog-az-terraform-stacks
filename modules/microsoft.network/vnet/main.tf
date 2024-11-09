// ***********************************************************************
//
//  Author: Lukas Rottach
//  GitHub: https://github.com/lrottach
//  Description: Deployment of an Azure Virtual Network with a dedicated subnet for compute resources
//  Type: Module
//  Version: 0.1.0
//
// ***********************************************************************

// Virtual Network
// **********************

resource "azurerm_virtual_network" "this" {
  name                = local.vnet_name
  location            = var.deployment_location
  resource_group_name = azurerm_resource_group.var.rg_name
  address_space       = var.vnet_address_space
}

// Subnet
// **********************

resource "azurerm_subnet" "subnet_compute" {
  name                 = var.vnet_subnet_compute_name
  resource_group_name  = azurerm_resource_group.var.rg_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = var.vnet_address_space
}
