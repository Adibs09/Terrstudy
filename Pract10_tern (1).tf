# //conditional operator
# variable "env" {
#   default = "prod"
#   type = string
# }
# resource "azurerm_resource_group" "example" {
#   name     = "deep-rg1"
#   location = "West Europe"
# }

# resource "azurerm_public_ip" "example" {
#   name                = var.env == "prod" ? "Deep-IP" : "NOT-Deep-ip"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"
#   count = var.env == "prod" ? 1 : 0 
#   tags = {
#     environment = "Production"
#   }
# }

# output "name" {
#   value = var.env == "prod" ? 1 : 0 
# }