# variable "rg_list" { 
#    type = list(string)
#    default = [ "rg1","rg2","rg3" ]
# }

# variable "rg_location" {
#     default = "eastus"
# }

# resource "azurerm_resource_group" "example" {
#   name     = element(var.rg_list,0)
#   location = var.rg_location
# }

# resource "azurerm_resource_group" "example1" {
#   name     = element(var.rg_list,1)
#   location = var.rg_location
# }

# resource "azurerm_resource_group" "example2" {
#   name     = element(var.rg_list,2)
#   location = var.rg_location
# }