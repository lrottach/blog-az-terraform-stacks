// ***********************************************************************
//
//  Author: Lukas Rottach
//  GitHub: https://github.com/lrottach
//  Type: Terraform Stacks - Components
//  Version: 0.1.0
//
// ***********************************************************************

// Component: Resource Group
// **********************

component "rg" {
    source = "./modules/microsoft.resources/rg"
    inputs = {
        deployment_location = var.deployment_location
        project_identifier = var.project_identifier
    }

    providers = {
        azurerm = provider.azurerm.this
    }
}

// Component: Virtual Network
// **********************
component "vnet" {
    source = "./modules/microsoft.network/vnet"
    inputs = {
        // Deployment Variables
        deployment_location = var.deployment_location
        project_identifier = var.project_identifier
        rg_name = component.rg.rg_name

        // Network Variables
        vnet_address_space = var.vnet_address_space
        vnet_subnet_compute_range = var.vnet_subnet_compute_range
    }

    providers = {
        azurerm = provider.azurerm.this
    }
}
