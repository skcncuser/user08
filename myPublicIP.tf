resource "azurerm_public_ip" "user08-myterraformpublicip" {
    name                         = "user08-myPublicIP"
    location                     = "koreasouth"
    resource_group_name          = "${azurerm_resource_group.user08-terraformrg-final.name}"
    allocation_method            = "Dynamic"
    tags = {
        environment = "User08-PublicIP"
    }
}

