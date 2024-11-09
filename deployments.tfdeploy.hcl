identity_token "azurerm" {
  audience = [ "api://AzureADTokenExchange" ]
}

deployment "westeurope" {
  inputs = {
    deployment_location       = "westeurope"
    rg_name    = "rg-demo-stacks-wl1-we"

    identity_token  = identity_token.azurerm.jwt
  }
}
