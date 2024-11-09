// ***********************************************************************
//
//  Author: Lukas Rottach
//  GitHub: https://github.com/lrottach
//  Type: Terraform Stacks - Deployment
//  Version: 0.1.0
//
// ***********************************************************************

identity_token "azurerm" {
  audience = [ "api://AzureADTokenExchange" ]
}

deployment "westeurope" {
  inputs = {
    // Deployment variables
    deployment_location       = "westeurope"
    project_identifier = "demo-stacks-wl1-we"

    // Network variables
    vnet_address_space = [ "10.10.0.0/16" ]
    vnet_subnet_compute_range = "10.10.1.0/24"

    identity_token  = identity_token.azurerm.jwt
  }
}
