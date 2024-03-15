# //data source
# //Create a resource group using protal named Portal-rg

# data "azurerm_resource_group" "example" {
#   name = "Portal-rg"
# }

# resource "azurerm_public_ip" "example3" {
#   name                = "Deep-data-ip"
#   resource_group_name = data.azurerm_resource_group.example.name
#   location            = data.azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }