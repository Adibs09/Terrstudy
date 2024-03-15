# resource "azurerm_resource_group" "portal" {
#    name = "Portal-rg"
#    location = "eastus"
# }

# resource "azurerm_public_ip" "example3" {
#   name                = "Deep-data-ip"
#   resource_group_name = azurerm_resource_group.portal.name
#   location            = azurerm_resource_group.portal.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
#   provisioner "local-exec" {
#     command = "echo ${self.ip_address} > ipadd.txt"
#   }