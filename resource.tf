resource "azurerm_resource_group" "user08-terraformrg-final" {
    name     = "user08-terraformrg-final"
    location = "koreasouth"

    tags= {
        environment = "user08-Terraform Demo"
    }
}
