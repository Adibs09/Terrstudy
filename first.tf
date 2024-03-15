
# provider "azurerm" {
#   features {
#   }
# }

# provider "aws" {
# }
# resource "azurerm_resource_group" "example" {
#   name     = "test-rg"
#   location = "West Europe"
# }
# resource "azurerm_resource_group" "example111" {
#   name     = "deep-rg"
#   location = "West Europe"
# }

# resource "azurerm_resource_group" "example1" {
#   name     = "deep-rg1"
#   location = "West Europe"
# }

# resource "azurerm_public_ip" "example1" {
#   name                = "Deep-ip"
#   resource_group_name = azurerm_resource_group.example1.name
#   location            = azurerm_resource_group.example1.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }