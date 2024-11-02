identity_token "azurerm" {
  audience = [ "api://AzureADTokenExchange" ]
}

deployment "development" {
  inputs = {
    deployment_location       = "westeurope"
    rg_name    = "rg-demo-stacks-wl1-we"

    identity_token  = identity_token.azurerm.jwt
    client_id       = "2e22255b-7a3c-4d88-af65-01d01093e923"
    subscription_id = "61de5036-4b92-424d-9c58-16720e561d6e"
    tenant_id       = "cb5d5a54-23f2-447e-8850-d43b278d1d15"
  }
}
