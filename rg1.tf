# resource "azurerm_resource_group" "name1" {
#   name     = "name1"
#   location = "West Europe"
# }

# resource "azurerm_public_ip" "name1" {
#   name                = "name1ip"
#   resource_group_name = azurerm_resource_group.name1.name
#   location            = azurerm_resource_group.name1.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }


# resource "azurerm_resource_group" "name2" {
#   name     = "name2"
#   location = "West Europe"
# }

# resource "azurerm_public_ip" "name2" {
#   name                = "name1ip"
#   resource_group_name = azurerm_resource_group.name2.name
#   location            = azurerm_resource_group.name2.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }
# output "ip1" {
#   value = azurerm_public_ip.name1.ip_address
# }

# output "ip2" {
#   value = azurerm_public_ip.name2.ip_address
#   sensitive = true
# }