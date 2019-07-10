resource "azurerm_virtual_network" "user08-myterraformnetwork" {
    name                = "user08-myVnet"
    address_space       = ["8.0.0.0/16"]
    location            = "koreasouth"
    resource_group_name = "${azurerm_resource_group.user08-terraformrg-final.name}"
    tags= {
        environment = "User08-Vnet"
    }
}

