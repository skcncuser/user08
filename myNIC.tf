resource "azurerm_network_interface" "user08-myterraformnic" {
    name                = "user08-myNIC"
    location            = "koreasouth"
    resource_group_name = "${azurerm_resource_group.user08-terraformrg-final.name}"
    network_security_group_id = "${azurerm_network_security_group.user08-myterraformnsg.id}"

    ip_configuration {
        name                          = "user08-myNicConfiguration"
        subnet_id                     = "${azurerm_subnet.user08-myterraformsubnet.id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${azurerm_public_ip.user08-myterraformpublicip.id}"
    }
    tags={
        environment = "User08-NIC-ap"
    }
}

