// Locals
locals {
  vnet_name = "vnet-${var.project_identifier}"
}

variable "rg_name" {
    type        = string
    description = "Azure resource group name"
}

variable "deployment_location" {
  type        = string
  description = "Azure deployment location"
}

variable "project_identifier" {
  type        = string
  description = "Project identifier"
}

// Virtual Network variables
variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
}

variable "vnet_subnet_compute_name" {
    type        = string
    description = "Name of the subnet for compute resources"
    default     = "ComputeSubnet"
}

variable "vnet_subnet_compute_range" {
  type        = string
  description = "Dedicated subnet for compute resources"
}
