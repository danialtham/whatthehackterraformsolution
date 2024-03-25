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
        name                          = "WTHUbuntuNICConfiguration"
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
    path     = "/home/azureuser/.ssh/authorized_keys"
    key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDG4aEcmoagvI2VXIWnkLlwt0M5M5Oo5NQ5hoJi8r8E6ZUksChLkvfUbXZmQPKtkx2slM0ozWgEkFSAA0qrwaIxAExliRtiXHdz0F1OqC3eIonEzN5eardM7vnfDZLTlr6yN4hB6M+tm28/BlnMWCCDYG+ld22LYYVbYSWinZUnoyKWWB9stXgiFEfr2GtcwSsMfwsBJQixtJm1tVcMRNtZNyXqdPkpPrQUueJUFvZuht0bWdxXcNC2jzIWulzqjyLqkXB2JbV9KAUgU6oSIkpkGJs26I/MCqmVPfzXu00dKuFRRZdjqstJZPTuxemv8BWJKooqKwWBH1+KL83A3RMaxwr+eExQHZXop8KPXBqFdRu3LfuXVXKxsUIJywSfPT25a4Vp3mZ/VVzG6eZr6+8/cSYevmW6t5teysZ5QRkauK4llt5UXTTspNCL5Nl9Rj48NjvqujjVnwgLibo+XXIlqUEkQGLs6a58e/z201opuiB7EBEeZuPHFFB3CG2c5wsl9yiP+nizPCHXK0ABYaDOOiSS/L3ZVPqcxo2swfJTkj1A8TEDpwWPg4IWBEuM+Q4FZW0aydN9ury+qxFgVONOceWPFuJLHU/mZbx89E8A9//JbdjXygwEVk9kQ0b8ab2/fMax6IzXs12MgHAFUNpQS/T7qk8Bu0cE/ktpgOOoPQ== REDMOND+danialtham@LAPTOP-14ADFGQV"
}

