#    resource "azurerm_resource_group" "example" {
#   name     = "deep-rg1"
#   location = "West Europe"
# }

# resource "azurerm_public_ip" "example" {
#   name                = "PB${count.index}"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"
#   count = 4
#   tags = {
#     environment = "Production"
#   }
# }

# output "ips" {
#   value = zipmap(azurerm_public_ip.example[*].name,azurerm_public_ip.example[*].ip_address)
# }