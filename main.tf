# resource "azurerm_resource_group" "rg" {
#   name     = "dynamic-rg"
#   location = "West Europe"
# }

# resource "azurerm_virtual_network" "vnet" {
#   name                = "dynamic-vnet"
#   location            = "West Europe"
#   resource_group_name = "dynamic-rg"
#   address_space       = ["10.0.0.0/16"]


#   dynamic "subnet" {
#    for_each = {
#      subnet1 = ["10.0.1.0/24"]
#      subnet2 = ["10.0.2.0/24"]
#    }
#     content {
#     name             = subnet.key
#     address_prefixes = subnet.value
#   }
#   }
# }