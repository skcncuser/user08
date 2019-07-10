resource "azurerm_subnet" "user08-myterraformsubnet" {
    name                 = "user08-mySubnet"
    resource_group_name  = "${azurerm_resource_group.user08-terraformrg-final.name}"
    virtual_network_name = "${azurerm_virtual_network.user08-myterraformnetwork.name}"
    address_prefix       = "8.0.1.0/24"
}
