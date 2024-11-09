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
variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}

// Virtual Machine variables
variable "vm_count" {
  type        = number
  description = "Number of virtual machines"
}

variable "vm_size" {
  type        = string
  description = "Size of the virtual machine"
}

variable "vm_os_disk_size" {
  type        = number
  description = "Size of the OS disk in GB"
}
