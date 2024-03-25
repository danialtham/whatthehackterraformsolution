location = "Australia East"
resource_group_name = "wth-terrafrom-rg"

virtual_network_name = "wth-terrafrom-vnet"
virtual_network_address_space = ["10.1.0.0/16"]

subnet = { 
    name = "default"
    address_prefix = "10.1.0.0/24"
}

nsg = "WTHNSG"

nsg_security_rule_ssh = {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
}

tags = {
    environment = "WTH Terraform"
}

azurerm_network_interface = "wth-terrafrom-nic"

azurerm_public_ip = {
    name = "wth-terrafrom-pip"
    allocation_method = "Dynamic"
}
 azurerm_storage_account = {    
    account_replication_type = "LRS"
    account_tier = "Standard"
}

azurerm_network_interface_ip_configuration =  {
        name                          = "wth-terrafrom-ubuntu-nic-conf"
        private_ip_address_allocation = "Dynamic"        
}

os_profile = {
        computer_name  = "WTHUbuntuVM01"
        admin_username = "azureuser"
}

azurerm_virtual_machine  =  {
    name                  = "WTHUbuntuVM01"
    vm_size               = "Standard_DS1_v2"
}

azurerm_virtual_machine_storage_os_disk = {
    name              = "myOsDisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Premium_LRS"
}

azurerm_virtual_machine_storage_image_reference = {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "18.04-LTS"
        version   = "latest"
}

os_profile_linux_config_disable_password_authentication = true

os_profile_linux_config_ssh_keys = {
    path     = "//The path of the ssh folder on the VM"
    key_data = "//The public key, check here on how to create it https://learn.microsoft.com/en-us/azure/virtual-machines/linux/create-ssh-keys-detailed"
}

