component "rg" {
    source = "./modules/microsoft.resources/rg"
    inputs = {
        deployment_location = var.deployment_location
        resource_group_name = var.rg_name
    }

    providers = {
        azurerm = provider.azurerm.this
    }
}
