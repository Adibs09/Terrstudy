#  resource "azurerm_resource_group" "linux" {
#   name     = "deep-rg"
#   location = "eastus"
  
# }

# resource "azurerm_public_ip" "data" {
#   name                = "IP${count.index}"
#   resource_group_name = azurerm_resource_group.linux.name
#   location            = azurerm_resource_group.linux.location
#   allocation_method   = "Static"
#   count = 5
#   tags = {
#     environment = "Production"
#   }
# }


# output "ip" {
#   value = azurerm_public_ip.data[*].ip_address
# }
# output "ipone" {
#   value = azurerm_public_ip.data[0].ip_address
# }
