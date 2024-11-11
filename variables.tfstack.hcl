// ***********************************************************************
//
//  Author: Lukas Rottach
//  GitHub: https://github.com/lrottach
//  Type: Terraform Stacks - Varaiables
//  Version: 0.1.0
//
// ***********************************************************************

// Provider Configuration
// **********************
variable "identity_token" {
  type        = string
  ephemeral   = true
  description = "Identity token for provider authentication"
}

variable "client_id" {
  type        = string
  description = "Azure app registration client ID"
  default = "b5ebdb2b-dbe8-44ba-ad0e-4556a058bec9"
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
  default = "61de5036-4b92-424d-9c58-16720e561d6e"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
  default = "cb5d5a54-23f2-447e-8850-d43b278d1d15"
}

// Deployment Variables
// **********************
variable "deployment_location" {
  type        = string
  description = "Azure location name"
}

// Will be used to create unique resource names
variable "project_identifier" {
  type        = string
  description = "Name suffix for resource names"
}

// Network Variables
// **********************
variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
}

variable "vnet_subnet_compute_range" {
  type        = string
  description = "Dedicated subnet for compute resources"
}


// Virtual Machine Variables
// **********************
variable "vm_size" {
  type        = string
  description = "Azure VM size"
  default     = "Standard_B1s"
}

variable "vm_os_disk_size" {
  type        = number
  description = "Size of the OS disk in GB"
  default     = 30
}

variable "vm_count" {
  type        = number
  description = "Number of virtual machines"
  default     = 1
}
