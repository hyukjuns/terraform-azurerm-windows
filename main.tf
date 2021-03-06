data "azurerm_resource_group" "windows_vm" {
  name = var.resource_group_name
}

resource "azurerm_network_interface" "windows_vm" {
  name                = var.nic_name
  location            = coalesce(var.location, data.azurerm_resource_group.windows_vm.location)
  resource_group_name = data.azurerm_resource_group.windows_vm.name

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id          = var.public_ip_address_id == null ? null : var.public_ip_address_id
  }
}

resource "azurerm_windows_virtual_machine" "windows_vm" {
  name                = var.hostname
  resource_group_name = data.azurerm_resource_group.windows_vm.name
  location            = coalesce(var.location, data.azurerm_resource_group.windows_vm.location)
  size                = var.size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.windows_vm.id,
  ]

  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_sku
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.os_tag
  }
}