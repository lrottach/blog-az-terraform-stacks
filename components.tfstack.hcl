component "rg" {
    source = "./modules/microsoft.resources/rg"
    inputs = {
        location = var.deployment_location
        name = var.rg_name
    }

    providers = {
        azurerm = provider.azurerm.this
    }
}
