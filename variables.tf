variable "tags" {
  type = map(string)
  default = {
    environment = "WTH terrafrom"
  }
}

variable "location" {
  description = "The location where resources are created"
  default     = "Australia East"
}

variable "resource_group_name" {
  description = "The name of the resource group in which the resources are created"
}

variable "virtual_network_name" {
  description = "The name for the virtual network"
}

variable "virtual_network_address_space" {
  description = "The name for the virtual network"
  type        = list(string)
}

variable "subnet" {
  description = "The name and address prefix for the subnet"
  type        = map(string)
}

variable "nsg" {
  description = "The name of the Network security group"
}

variable "nsg_security_rule_ssh" {
  description = "The name, priority, direction, access, protocol, source_port_range, destination_port_range, source_address_prefix, destination_address_prefix for the SSH NSG security rule"
  type        = map(string)
}

variable "azurerm_network_interface" {
  description = "Settings for the VM NIC"
  type        = string
}

variable "azurerm_network_interface_ip_configuration" {
  description = "Setings for the VM's IP configuration"
  type        = map(string)
}

variable "azurerm_public_ip" {
  description = "Settings for the VM's IP settings (e.g. name, allocation)"
  type        = map(string)
}

variable "azurerm_virtual_machine" {
  description = "Virtual machine settings"
  type        = map(string)
}

variable "os_profile_linux_config_disable_password_authentication" {
  description = "Password authentication setting for linux"
}

variable "os_profile" {
  description = "OS Profile settings"
  type        = map(string)
}

variable "azurerm_storage_account" {
  description = "Storage account settings"
  type        = map(string)
}

variable "os_profile_linux_config_ssh_keys" {
  description = "SSH settings for linux"
  type        = map(string)
}

variable "azurerm_virtual_machine_storage_os_disk" {
  description = "Storage settings for the VM"
  type        = map(string)
}

variable "azurerm_virtual_machine_storage_image_reference" {
  description = "Storage image reference settings for the VM"
  type        = map(string)
}
