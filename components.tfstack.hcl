component "rg" {
    source = "./modules/microsoft.resources/rg"
    inputs = {
        deployment_location = var.deployment_location
        project_identifier = "demo-stacks-wl1-we"
    }

    providers = {
        azurerm = provider.azurerm.this
    }
}
