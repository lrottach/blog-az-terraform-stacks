terraform {
  cloud {

    organization = "dark-contoso"

    workspaces {
      name = "az-terraform-stacks"
    }
  }
}
