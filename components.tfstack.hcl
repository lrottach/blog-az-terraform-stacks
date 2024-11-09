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

component "vnet" {
    source = "./modules/microsoft.network/vnet"
    inputs = {
        deployment_location = var.deployment_location
        rg_name = component.rg.rg_name
        project_identifier = var.project_identifier
        vnet_address_space = var.vnet_address_space
        vnet_subnet_compute_range = var.vnet_subnet_compute_range
    }

    providers = {
        azurerm = provider.azurerm.this
    }
}
