terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.0.2"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
      // subscription = "61de5036-4b92-424d-9c58-16720e561d6e"
    }
  }
}

provider "azuread" {}

provider "azurerm" {
  subscription_id = "61de5036-4b92-424d-9c58-16720e561d6e"
  features {}
}
