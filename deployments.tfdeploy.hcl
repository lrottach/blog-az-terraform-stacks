// ***********************************************************************
//
//  Author: Lukas Rottach
//  GitHub: https://github.com/lrottach
//  Type: Terraform Stacks - Deployment
//  Version: 0.1.0
//
// ***********************************************************************

orchestrate "auto_approve" "no_vnet_changes" {
    check {
        # Check that the pet component has no changes
        condition = context.plan.component_changes["component.vnet"].total == 0
        reason = "Not automatically approved because changes proposed to vnet component."
    }
}


identity_token "azurerm" {
  audience = [ "api://AzureADTokenExchange" ]
}

deployment "westeurope" {
  inputs = {
    // Deployment variables
    deployment_location       = "westeurope"
    project_identifier = "demo-stacks-wl1-we"

    // Virtual Machine variables
    vm_size = "Standard_B1s"
    vm_count = 3
    vm_os_disk_size = 64

    // Network variables
    vnet_address_space = [ "10.10.0.0/16" ]
    vnet_subnet_compute_range = "10.10.1.0/24"

    identity_token  = identity_token.azurerm.jwt
  }
}

deployment "eastus" {
  inputs = {
    // Deployment variables
    deployment_location       = "eastus"
    project_identifier = "demo-stacks-wl1-eus"

    // Virtual Machine variables
    vm_size = "Standard_B1s"
    vm_count = 1
    vm_os_disk_size = 64

    // Network variables
    vnet_address_space = [ "10.20.0.0/16" ]
    vnet_subnet_compute_range = "10.20.1.0/24"

    identity_token  = identity_token.azurerm.jwt
  }
}

deployment "australiaeast" {
  inputs = {
    // Deployment variables
    deployment_location       = "australiaeast"
    project_identifier = "demo-stacks-wl1-ae"

    // Virtual Machine variables
    vm_size = "Standard_B1s"
    vm_count = 3
    vm_os_disk_size = 64

    // Network variables
    vnet_address_space = [ "10.30.0.0/16" ]
    vnet_subnet_compute_range = "10.30.1.0/24"

    identity_token  = identity_token.azurerm.jwt
  }
}
