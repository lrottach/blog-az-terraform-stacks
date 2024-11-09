// ***********************************************************************
//
//  Author: Lukas Rottach
//  GitHub: https://github.com/lrottach
//  Description: Deployment of a defined ammount of virtual machines
//  Type: Module
//  Version: 0.1.0
//
// ***********************************************************************

// Locals
// **********************
locals {
  vm_prefix = "vm-${replace(var.project_identifier, "-", "")}"
}

// Network Interface
// **********************

resource "azurerm_network_interface" "this" {
  count               = var.vm_count
  name                = "${locals.vm_prefix}${count.index}-nic"
  location            = var.deployment_location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

// Virtual Machine
// **********************
resource "azurerm_virtual_machine" "this" {
  count                 = var.vm_count
  name                  = "${locals.vm_prefix}${count.index}"
  location              = var.deployment_location
  resource_group_name   = var.rg_name
  network_interface_ids = [element(azurerm_network_interface.this.*.id, count.index)]

  vm_size = var.vm_size

  storage_os_disk {
    name              = "${locals.vm_prefix}${count.index}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
    disk_size_gb      = var.vm_os_disk_size
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "22.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "${locals.vm_prefix}${count.index}"
    admin_username = "adminuser"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}
