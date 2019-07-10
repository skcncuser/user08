

resource "azurerm_virtual_machine" "user08-myterraformvm-02" {
    name                  = "user08-myVM-02"
    location              = "korea south"
    resource_group_name   = "${azurerm_resource_group.user08-terraformrg-final.name}"
    network_interface_ids = ["${azurerm_network_interface.user08-myterraformnic-02.id}"]
    vm_size               = "Standard_DS1_v2"

    storage_os_disk {
        name              = "user08-myOsDisk-02"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"
    }
    storage_image_reference {
        publisher = "OpenLogic"
        offer     = "CentOS"
        sku       = "7.5"
        version   = "latest"
    }
os_profile {
        computer_name  = "user08-myvm-02"
        admin_username = "azureuser"
        admin_password = "SKCNC!23"
    }

 os_profile_linux_config {
        disable_password_authentication = true
        ssh_keys {
            path     = "/home/azureuser/.ssh/authorized_keys"
            key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGCgK0IAEAoq9vn9lw6cV4lHLmGuKVuAtO+2pKy25C8g2rT4RUdvUi3Gly0rbmH8w1jJOyrT8M0SENfpZnxv5Bn2zCHf9QrcBSPHeJEj7/Mds4706cBs24KTtmxKv5MgH/9rB2Qid0BnwyZiabRGdphgqFpCpFOu9zxmR+M2R8tq0RKQzZGRdkeWxAgbCsrUMVnP+CggXQ0qVLOOXc6Wdbe7Ps8zcLwISfMxVBGX7B7bpsswFnPbKotg0kHI6TxmoSjItC7NWfQcFY9samNXAWs0Rm+V7NciUj+JJwnfvGbu94g4se1/48aI0W1LP/PSDovIhIy4JB3JQCEpGVJuhB user08@cc-4191ffd3-6f9ffd66f6-5rbsv"
        }
    }

}
